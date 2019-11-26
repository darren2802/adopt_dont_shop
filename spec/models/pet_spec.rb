require 'rails_helper'

describe Pet, type: :model do
  describe "validations" do
    it {should validate_presence_of :name}
    it {should validate_presence_of :image}
    it {should validate_presence_of :age_approx}
    it {should validate_presence_of :sex}
    it {should validate_presence_of :shelter_id}
    it {should validate_presence_of :adoptable}
    it {should validate_presence_of :breed}
    it {should validate_presence_of :description}
    it {should validate_presence_of :created_at}
    it {should validate_presence_of :updated_at}
  end

  describe "relationships" do
    it {should belong_to :shelter}
  end
end
