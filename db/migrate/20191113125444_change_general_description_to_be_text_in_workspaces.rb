class ChangeGeneralDescriptionToBeTextInWorkspaces < ActiveRecord::Migration[5.2]
  def change
    change_column :workspaces, :general_description, :text
  end
end
