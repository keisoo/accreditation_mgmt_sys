class Area < ApplicationRecord
  has_many :parameters
  belongs_to :user

  def files
    Document.includes(line: {number: {parameter: :area}}).where("areas.id" => self.id).where(is_accepted: true)
  end

end
