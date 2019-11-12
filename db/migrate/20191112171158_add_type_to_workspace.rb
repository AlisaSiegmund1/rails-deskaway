class AddTypeToWorkspace < ActiveRecord::Migration[5.2]
  def change
    add_column :workspaces, :type, :string
  end
end
