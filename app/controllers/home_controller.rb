class HomeController < ApplicationController
  include DocumentsHelper
  autocomplete :document_file, full: true

  def index
    @document = Document.new
    documents = Document.accepted.where(is_personalfiles: nil) + Document.accepted.where.not(is_personalfiles: nil).where(user: current_user)
    @documents = get_documents(documents)
    render 'areas/index'
  end

  def search
    query = params[:query]
    is_trash = params[:trash]
    area_id = params[:area]
    personal = params[:personal]
    
    documents = if query.present?
                  if is_trash.present?
                    Document.only_deleted.where(is_personalfiles: nil).where("document_file LIKE ?", "%#{query}%")
                  else
                    Document.accepted.where(is_personalfiles: nil).where("document_file LIKE ?", "%#{query}%")
                  end
                else
                  if is_trash.present?
                    Document.only_deleted.where(is_personalfiles: nil)
                  else
                    Document.accepted.where(is_personalfiles: nil)
                  end
                end
    
#    documents = if query.present?
#                   if is_trash.present?
#                     Document.only_deleted.where("document_file LIKE ?", "%#{query}%")
#                   else
#                     if area_id.present?
#                       Document.accepted.where(is_personalfiles: nil).where("document_file LIKE ?", "%#{query}%").where(area_id: area_id)  if area_id.present?
#                     elsif personal.present?
#                       Document.accepted.where.not(is_personalfiles: nil).where(user: current_user)
#                     else
#                       Document.accepted.where(is_personalfiles: nil).where("document_file LIKE ?", "%#{query}%") + Document.where.not(is_personalfiles: nil).where("document_file LIKE ?", "%#{query}%").where(user: current_user)
#                     end
#                   end
#                 else
#                   if is_trash.present?
#                     Document.only_deleted
#                   else
#                     if area_id.present?
#                       Document.accepted.where(is_personalfiles: nil, area_id: area_id)
#                     elsif personal.present?
#                       Document.accepted.where.not(is_personalfiles: nil).where(user: current_user)
#                     else
#                       Document.accepted.where(is_personalfiles: nil) + Document.accepted.where.not(is_personalfiles: nil).where(user: current_user)
#                     end
#                   end
#                 end

    @documents = get_documents(documents)

    render json: { documents: @documents }
  end

end
