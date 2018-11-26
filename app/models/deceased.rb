class Deceased < ApplicationRecord
  # acts_as_gmappable

  belongs_to :user


  # validates :location, :address, :city, :state, :latitude  => :lat, :longitude => :lng, presence: true

  # geocoded_by :address
  # after_validation :geocode, :reverse_geocode, :if => :address_changed?


  validates :name , presence: true
  validates :age , presence: true
  validates :relationship , presence:true
  validates :death_date ,  presence:true
  validates :address , presence:true


end
