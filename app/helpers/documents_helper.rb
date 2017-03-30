module DocumentsHelper
  def get_documents(documents)
    documents = documents.collect do |docu|
      {
        id: docu.id,
        user: docu.user.name,
        is_starred: docu.is_starred,
        identifier: docu.document_file_identifier,
        created_at: docu.created_at.strftime("%b %d, %Y - %I:%M %p"),
        download_link: docu.document_file.url,
        size: ActionController::Base.helpers.number_to_human_size(File.size(docu.document_file.current_path)),
        file_extension: File.extname(docu.document_file.current_path),
        personal_file: docu.is_personalfiles, 
        area: docu.line.number.parameter.area.try(:name),
        accepted: docu.is_accepted,
        parameter: docu.line.number.parameter.name
      }
    end
    documents
  end
end
