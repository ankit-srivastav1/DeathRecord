class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :deceaseds

  validates :email ,     presence:  true
  validates :first_name , presence: true
  validates :last_name , presence: true
  validates :password ,presence: true
  validates :age  , presence: true

end
