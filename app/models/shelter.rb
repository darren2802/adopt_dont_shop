class Shelter < ApplicationRecord
  validates_presence_of :name, :address, :city, :state, :zip, :created_at, :updated_at
  has_many :pets
end
