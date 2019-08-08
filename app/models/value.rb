class Value < ApplicationRecord
  belongs_to :report
  belongs_to :indicator
end
