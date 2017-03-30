class Line < ApplicationRecord
  belongs_to :number
  has_many :documents
end
