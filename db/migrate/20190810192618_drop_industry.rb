class DropIndustry < ActiveRecord::Migration[5.2]
  def change
    drop_table :industries
  end
end
