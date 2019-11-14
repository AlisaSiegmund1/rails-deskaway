class CreateWorkspaceDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :workspace_details do |t|
      t.references :workspace, foreign_key: true
      t.references :utility, foreign_key: true

      t.timestamps
    end
  end
end
