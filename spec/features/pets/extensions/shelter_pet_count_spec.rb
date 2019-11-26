require 'rails_helper'

RSpec.describe 'Shelter Pet Count', type: :feature do
  before :each do
    @shelter_1 = Shelter.create(name: 'Fontenelle Dog Haven', address: '29 Thomasville Avenue', city: 'Omaha', state: 'Nebraska', zip: 68112)
    @shelter_2 = Shelter.create(name: 'Freeport Dog Shelter', address: '81 Santa Cruz Lane', city: 'Cleveland', state: 'Ohio', zip: 44135)
    @shelter_3 = Shelter.create(name: 'Funkley Dog Haven', address: '29 San Antonio Avenue', city: 'Queens', state: 'New York', zip: 11361)

    @pet_1 = Pet.create(name: 'Larkin', image: 'https://adopt-dont-shop.s3-us-west-1.amazonaws.com/images/redbone_50.jpg', age_approx: 10, sex: 'male', breed: 'Redbone', adoptable: true, shelter_id: @shelter_2.id)
    @pet_2 = Pet.create(name: 'Toga', image: 'https://adopt-dont-shop.s3-us-west-1.amazonaws.com/images/bull_mastiff_35.jpg', age_approx: 7, sex: 'female', breed: 'Bull Mastiff', adoptable: true, shelter_id: @shelter_2.id)
    @pet_3 = Pet.create(name: 'Juni', image: 'https://adopt-dont-shop.s3-us-west-1.amazonaws.com/images/flat-coated_retriever_117.jpg', age_approx: 13, sex: 'male', breed: 'Flat-Coated Retriever', adoptable: true, shelter_id: @shelter_2.id)
    @pet_4 = Pet.create(name: 'Topher', image: 'https://adopt-dont-shop.s3-us-west-1.amazonaws.com/images/scottish_deerhound_95.jpg', age_approx: 5, sex: 'female', breed: 'Scottish Deerhound', adoptable: true, shelter_id: @shelter_2.id)
    @pet_5 = Pet.create(name: 'Jiniellyz', image: 'https://adopt-dont-shop.s3-us-west-1.amazonaws.com/images/doberman_147.jpg', age_approx: 8, sex: 'female', breed: 'Doberman', adoptable: true, shelter_id: @shelter_2.id)
    @pet_6 = Pet.create(name: 'Cataldi', image: 'https://adopt-dont-shop.s3-us-west-1.amazonaws.com/images/flat-coated_retriever_28.jpg', age_approx: 13, sex: 'male', breed: 'Flat-Coated Retriever', adoptable: true, shelter_id: @shelter_2.id)
  end

  it 'counts the number of pets for a shelter when visiting a shelter pet index page' do
    visit "/shelters/#{@shelter_2.id}/pets"
    expect(current_path).to eq("/shelters/#{@shelter_2.id}/pets")

    expect(page).to have_content("Number of pets at this shelter: 6")
  end

end
