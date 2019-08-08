class RemovePeriodFromPeriods < ActiveRecord::Migration[5.2]
  def change
    remove_column :periods, :period, :string
    add_column :periods, :year, :integer
  end
end
