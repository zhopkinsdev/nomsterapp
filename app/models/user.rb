class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :places
  validates :email, confirmation: true
  validates :email_confirmation, presence: true
  validates :email, confirmation: { case_sensitive: false }
  has_many :comments

end
