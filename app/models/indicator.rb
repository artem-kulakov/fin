class Indicator < ApplicationRecord
  has_many :values, dependent: :destroy
end
