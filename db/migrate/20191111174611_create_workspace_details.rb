class CreateWorkspaceDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :workspace_details do |t|
      t.references :workspace, foreign_key: true
      t.references :utilities, foreign_key: true

      t.timestamps
    end
  end
end
