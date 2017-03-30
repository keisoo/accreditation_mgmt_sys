class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :rememberable,
         :recoverable, :trackable, :validatable
  has_paper_trail

  belongs_to :area
  has_many :documents

  attr_accessor :login

end
