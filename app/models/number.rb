class Number < ApplicationRecord
  belongs_to :parameter
  has_many :lines
end
