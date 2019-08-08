class CreateReports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports do |t|
      t.references :company, foreign_key: true
      t.references :period, foreign_key: true
      t.references :standard, foreign_key: true
      t.references :currency, foreign_key: true

      t.timestamps
    end
  end
end
