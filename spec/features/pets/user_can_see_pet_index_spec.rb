require 'rails_helper'

RSpec.describe 'Pets index', type: :feature do
  before :each do
    @shelter_1 = Shelter.create( name: 'Dog Haven',
                                address: '123 Curtis Street',
                                city: 'Denver',
                                state: 'Colorado',
                                zip: 80202)

    @pet_1 = Pet.create( name: 'Elvis',
                        image: 'https://adopt-dont-shop.s3-us-west-1.amazonaws.com/images/border_collie_92.jpg',
                        age_approx: 7,
                        sex: 'male',
                        shelter_id: @shelter_1.id)
  end

  it 'can see each pet in the system and its details when visiting /pets' do
    visit '/pets'

    expect(page).to have_content(@pet_1.name)
    expect(page).to have_content(@pet_1.age_approx)
    expect(page).to have_content(@pet_1.sex)
    expect(page).to have_content(@shelter_1.name)
    expect(page).to have_css("img[src *= 'border_collie_92.jpg']")
  end
end
