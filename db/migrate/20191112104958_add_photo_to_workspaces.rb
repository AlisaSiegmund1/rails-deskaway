class AddPhotoToWorkspaces < ActiveRecord::Migration[5.2]
  def change
    add_column :workspaces, :photo, :string
  end
end
