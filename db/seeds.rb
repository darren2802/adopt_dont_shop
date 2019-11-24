# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


@shelter_1 = Shelter.create( name: 'Dog Haven',
                address: '123 Curtis Street',
                city: 'Denver',
                state: 'Colorado',
                zip: 80202)

Pet.create( name: 'Elvis',
            image: 'https://adopt-dont-shop.s3-us-west-1.amazonaws.com/images/border_collie_92.jpg',
            age_approx: 7,
            sex: 'male',
            shelter_id: @shelter_1.id)
