class RemoveColumnFromCompany < ActiveRecord::Migration[5.2]
  def change
    remove_reference :companies, :industry, foreign_key: true
  end
end
