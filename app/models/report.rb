class Report < ApplicationRecord
  belongs_to :company
  belongs_to :period
  belongs_to :standard
  belongs_to :currency

  has_many :values, inverse_of: :report, dependent: :destroy
  accepts_nested_attributes_for :values
end
