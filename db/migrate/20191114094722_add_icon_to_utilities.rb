class AddIconToUtilities < ActiveRecord::Migration[5.2]
  def change
    add_column :utilities, :icon, :string
  end
end
