class AddPricePerHourToWorkspaces < ActiveRecord::Migration[5.2]
  def change
    add_column :workspaces, :price_per_hour, :integer
  end
end
