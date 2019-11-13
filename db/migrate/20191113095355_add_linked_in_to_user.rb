class AddLinkedInToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :linked_in, :string
  end
end
