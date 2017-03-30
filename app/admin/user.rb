ActiveAdmin.register User do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
	permit_params :username, :name, :email, :password, :password_confirmation, :role, :area_id, :last_sign_in_at, :updated_at
  
  index do
    id_column
    column :username
    column :name
    column :email
    column :created_at
    column :updated_at
    column :role
    column :area
    column :last_sign_in_at

    actions
  end
  
  form do |f|
    f.inputs do 
      f.input :username
      f.input :name
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :area
      f.input :role, as: :select, collection: ['User','Member']
    end
    actions
  end

end
