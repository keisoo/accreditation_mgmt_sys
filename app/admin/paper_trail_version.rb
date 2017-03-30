ActiveAdmin.register PaperTrail::Version, as: "History" do
  actions :index

  scope "Files", default: true do |versions|
    versions.where(item_type: "Document")
  end
  scope "Users" do |versions|
    versions.where(item_type: "User")
  end

  index do
    id_column
    column "Item" do |version|
      if version.item_type == "Document"
        link_to version.item.document_file_identifier, version.item rescue "(File Deleted)"
      else
        link_to version.item.name, admin_user_path(version.item)
      end
    end
    column "Log" do |version|
      if version.item_type == "User"
        if version.event == "create"
          "#{User.find(version.whodunnit).name} created a user" rescue "Seed file created a user."
        else
          if version.changeset.keys.include? "current_sign_in_at"
            "#{version.item.name} logged in at #{version.created_at}"
          else
            "#{User.find(version.whodunnit).name} edited a user"
          end
        end
      else
        if version.event == "create"
          "#{User.find(version.whodunnit).name} uploaded a file."
        elsif version.event == "update"
          "#{User.find(version.whodunnit).name} accepted a file upload."
        else
          if PaperTrail::Version.where_object(is_accepted: true).include? version
            if not PaperTrail::Version.where_object(deleted_at: nil).include? version
              "#{User.find(version.whodunnit).name} restored a file."
            else
              "#{User.find(version.whodunnit).name} deleted a file."
            end
          else
            "#{User.find(version.whodunnit).name} rejected a file upload."
          end
        end
      end
    end
    column :created_at

  end

end
