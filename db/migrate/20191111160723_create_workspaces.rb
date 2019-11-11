class CreateWorkspaces < ActiveRecord::Migration[5.2]
  def change
    create_table :workspaces do |t|
      t.string :name
      t.string :address
      t.integer :capacity
      t.string :image
      t.string :type
      t.string :company
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
