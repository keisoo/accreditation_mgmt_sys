ActiveAdmin.register Document do
	permit_params :id, :document_file_identifier, :created_at, :updated_at, :description, :user_id, :area_id, :parameter_id, :number_id

	index do
    id_column
    column :document_file_identifier
    column :created_at
    column :updated_at
    column :user_id
    column "Parameter" do |docu|
        docu.line.number.parameter.name
    end
    column "Number" do |docu|
        docu.line.number.name
    end
    actions
	end
end