class Deceased < ApplicationRecord
  belongs_to :users

  validates :name , presence: true
  validates :age , presence: true
  validates :relationship , presence:true
  validates :death_date ,  presence:true
end
