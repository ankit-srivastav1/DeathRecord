class Deceased < ApplicationRecord
  belongs_to :user

  validates :name , presence: true
  validates :age , presence: true
  validates :relationship , presence:true
  validates :death_date ,  presence:true
end
