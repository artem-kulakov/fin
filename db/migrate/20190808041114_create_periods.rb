class CreatePeriods < ActiveRecord::Migration[5.2]
  def change
    create_table :periods do |t|
      t.datetime :period

      t.timestamps
    end
  end
end
