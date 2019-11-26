require 'rails_helper'

describe Shelter, type: :model do
  describe "validations" do
    it {should validate_presence_of :name}
    it {should validate_presence_of :address}
    it {should validate_presence_of :city}
    it {should validate_presence_of :state}
    it {should validate_presence_of :zip}
    it {should validate_presence_of :created_at}
    it {should validate_presence_of :updated_at}
  end

  describe "relationships" do
    it {should have_many :pets}
  end
end
