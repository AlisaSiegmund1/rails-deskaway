class AddProfessionToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :profession, :string
  end
end
