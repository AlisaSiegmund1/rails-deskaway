class AddCoordinatesToWorkspaces < ActiveRecord::Migration[5.2]
  def change
    add_column :workspaces, :latitude, :float
    add_column :workspaces, :longitude, :float
  end
end
