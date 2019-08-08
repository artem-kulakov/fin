class Report < ApplicationRecord
  belongs_to :company
  belongs_to :period
  belongs_to :standard
  belongs_to :currency
end
