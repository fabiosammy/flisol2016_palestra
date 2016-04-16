# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
def rand_time(weight, prgn)
  date = Date.new(Date.today.year, prgn.rand(1..12), prgn.rand(1..28))
  case weight
  when 1..5
    date
  when 5..15
    date - 3.years
  when 15..30
    date - 8.years
  when 30..40
    date - 12.years
  when 40..70
    date - 15.years
  else
    date - 20.years
  end
end

prgn = Random.new 
5.times do |time|
  weight = prgn.rand(120)
  Person.create! name: "Person #{time}", description: "Description person #{time}", weight: weight, born: rand_time(weight, prgn)  
end


