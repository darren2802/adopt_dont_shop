require 'rails_helper'

RSpec.describe 'shelters index page', type: :feature do
  it 'can see name of each shelter in system' do
    shelter_1 = Shelter.create(name: 'Denver')
    shelter_2 = Shelter.create(name: 'Cheyenne')
    shelter_3 = Shelter.create(name: 'Phoenix')

    visit '/shelters'

    expect(page).to have_content('Denver')
    expect(page).to have_content('Cheyenne')
    expect(page).to have_content('Phoenix')
  end
end
