require 'docx'

class DocumentsController < ApplicationController
  include DocumentsHelper

  def all_files
    @document = Document.new
    documents = Document.accepted.where(is_personalfiles: nil) + Document.accepted.where.not(is_personalfiles: nil).where(user: current_user)
    @documents = get_documents(documents)
    render 'areas/index'
  end

  def show
  end

  def create
    line = Line.find(params[:line]) rescue nil
    if params[:line].present?
      @document                   = Document.new
      @document.document_file     = params[:file]
      @document.user              = current_user
      @document.is_accepted       = true if line.number.parameter.area.user == current_user || current_user.role == 'admin'
      @document.line              = line

      if @document.save
        Notification.create(
          message: "#{current_user.name} uploaded a file. Filename is: '#{@document.document_file_identifier}'", 
          document: @document, is_accepted: false) unless line.number.parameter.area.user == current_user || current_user.role == 'admin'
      end
    end

    query2 = {}
    query2[:id] = @document.line.id

    #parsing algorithm

    if doc = Docx::Document.open(params[:file].path) rescue nil
      texts   = doc.text.split(" ").map! {|x| "% #{x} %"}
      query   = ""

      texts.count.times do 
        query += "tags LIKE ? OR "
      end 
      query.chomp!(" OR ")

      lines = Line.where(query, *texts).where.not(query2)

      if lines.present? 
        lines.each do |line|
          @document               = Document.new
          @document.document_file = params[:file]
          @document.user          = current_user
          @document.is_accepted   = true if line.number.parameter.area.user == current_user || current_user.role == 'admin'
          @document.line          = line

          if @document.save
            Notification.create(
              message: "#{current_user.name} uploaded a file. Filename is: '#{@document.document_file_identifier}'", 
              document: @document, is_accepted: false) unless line.number.parameter.area.user == current_user || current_user.role == 'admin'
          end
        end
      end
    end

    redirect_to :back, notice: "Document Uploaded"
  end

  def accept
    notification = Notification.find(params[:notification])
    notification.update(is_accepted: true, is_seen: true)

    @document = Document.find(params[:id])
    @document.update(is_accepted: true)
    redirect_to root_path, notice: "Document successfully accepted!"
  end

  def accept_all
    documents      = params[:documents] 
    notifications  = params[:notifications]
    Notification.where(id: notifications).update_all(is_accepted: true, is_seen: true)
    Document.where(id: documents).update_all(is_accepted: true)

    redirect_to root_path, notice: "Document successfully accepted!"
  end

  def reject
    notification = Notification.find(params[:notification])
    notification.update(is_accepted: true, is_seen: true)

    @document = Document.find(params[:id])
    @document.really_destroy!
    redirect_to root_path, notice: "Document successfully rejected!"
  end

  def toggle_starred
    @document     = Document.find(params[:id])
    @area         = Area.find(params[:area]) rescue nil
    toggle_value  = !@document.is_starred

    @document.update(is_starred: toggle_value)

    documents = if @area
                  @area.documents.accepted
                else
                  Document.accepted
                end

    @documents = get_documents(documents)

    render json: { documents: @documents }
  end

  def starred_files
    @document   = Document.new
    documents   = Document.where(is_starred:true)
    @documents  = get_documents(documents)

    render "home/index"
  end

  def personal_files
    @document   = Document.new
    documents   = Document.where(is_personalfiles: true, user: current_user)
    @documents  = get_documents(documents)
    @personal   = true

    render 'home/index'
  end

  def destroy
    @document = Document.find(params[:id])

    if @document.destroy
      render json: { success: true }
    end
  end

  def sent
    documents   = Document.where(user: current_user)
    @documents  = get_documents(documents)
    @sent       = true

    render 'areas/index'
  end

  def trash_bin
    @document   = Document.new
    documents   = Document.only_deleted
    @documents  = get_documents(documents)
    @trash      = true

    render 'areas/index'
  end

  def restore_file
    @document = Document.only_deleted.find(params[:id])

    if Document.restore(@document) 
      render json: true
    end
  end

  def destroy_permanent
    @document = Document.only_deleted.find(params[:id])

    if @document.really_destroy!
      render json: true
    end
  end

  def destroy_all
    @documents = Document.only_deleted

    @documents.each do |docu|
      docu.really_destroy!
    end

    redirect_to get_trash_path, notice: "Recycle bin empty!"
  end
end

