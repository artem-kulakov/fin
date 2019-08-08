class CreateValues < ActiveRecord::Migration[5.2]
  def change
    create_table :values do |t|
      t.references :report, foreign_key: true
      t.references :indicator, foreign_key: true
      t.integer :value

      t.timestamps
    end
  end
end
