# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
names = %w(harris konrad slipper fuzzies dante frenchy catherine professor_x
          senator_fuzzball napolean einstein)
colors = ['black', 'brown', 'orange', 'grey', 'white', 'orange with black strips' ]
sex = ['m', 'f']
10.times do
  cat = {color: colors.sample, birth_date: rand(1..5).year.ago,
        name: names.sample, sex: sex.sample }
  Cat.create!(cat)
end
Cat.first.update(description: "this is such a nice cat that no longer has rabies")

10.times do |i|
  random_date = (1.year.ago)
  start_date = random_date - (i + 1).months
  CatRentalRequest.create!(start_date: start_date, end_date: random_date, cat_id: i + 1, status: 'APPROVED')
end

10.times do |i|
  random_date = (0.year.ago)
  start_date = random_date - (i + 1).months
  CatRentalRequest.create!(start_date: start_date, end_date: random_date, cat_id: i + 1)
end
