class AddGeneralDescriptionToWorkspace < ActiveRecord::Migration[5.2]
  def change
    add_column :workspaces, :general_description, :string
  end
end
