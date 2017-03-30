class Document < ApplicationRecord
  acts_as_paranoid 
  has_paper_trail
  scope :accepted, -> {where(is_accepted: true)}
  
  belongs_to :user
  belongs_to :area
  belongs_to :line
  mount_uploader :document_file, DocumentFileUploader

end
