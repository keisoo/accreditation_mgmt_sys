class AreasController < ApplicationController
  include DocumentsHelper

  def index
    @document = Document.new
    documents = Document.accepted.where(is_personalfiles: nil) + Document.accepted.where.not(is_personalfiles: nil).where(user: current_user)
    @documents = get_documents(documents)
  end

  def show
    @area = Area.find(params[:id])
    documents = @area.files
    @documents = get_documents(documents) if documents.present?
  end

  def grid_view
    area = Area.includes(parameters: {numbers: {lines: :documents}}).find(params[:id])

    @area = {
      name: area.name,
      parameters: area.parameters.collect do |parameter|
        {
          name: parameter.name,
          numbers: parameter.numbers.collect do |number|
            {
              id: number.id,
              name: number.name,
              lines: number.lines.collect do |line|
                {
                  id: number.id,
                  name: line.indicator_name,
                  hasFiles: line.documents.present?
                }
              end
            }
          end
        }
      end
    }
  end

  def page_view
    area = Area.includes(parameters: {numbers: :lines}).find(params[:id])

    @area = {
      name: area.name,
      parameters: area.parameters.collect do |parameter|
        {
          name: parameter.name,
          numbers: parameter.numbers.collect do |number|
            {
              id: number.id,
              name: number.name,
              lines: number.lines.collect do |line|
                {
                  id: number.id,
                  name: line.name
                }
              end
            }
          end
        }
      end
    }
  end
end
