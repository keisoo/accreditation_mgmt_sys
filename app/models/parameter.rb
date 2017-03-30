class Parameter < ApplicationRecord
  belongs_to :area
  has_many :numbers
end
