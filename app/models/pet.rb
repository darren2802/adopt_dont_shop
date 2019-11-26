class Pet < ApplicationRecord
  validates_presence_of :name, :image, :age_approx, :sex, :adoptable, :breed, :description, :created_at, :updated_at, :shelter_id
  belongs_to :shelter
end
