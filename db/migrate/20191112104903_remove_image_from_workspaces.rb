class RemoveImageFromWorkspaces < ActiveRecord::Migration[5.2]
  def change
    remove_column :workspaces, :image, :string
  end
end
