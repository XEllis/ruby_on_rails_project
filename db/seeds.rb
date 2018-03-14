# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create! do |u|
  u.first_name = 'Admin'
  u.last_name = 'Admin'
  u.role = 'Admin'
  u.email = 'test@test.com'
  u.password = 'password'
end
User.create! do |u|
  u.first_name = 'r'
  u.last_name = 'r'
  u.role = 'Recruiter'
  u.email = 'r@r.r'
  u.password = 'r'
end
User.create! do |u|
  u.first_name = 'j'
  u.last_name = 'j'
  u.role = 'Job Seeker'
  u.email = 'j@j.j'
  u.password = 'j'
end

Company.create! do |u|
  u.name = 'Google'
  u.website = 'https://www.google.com/'
  u.headquarter = 'Silicon Valley'
  u.size = '1000+'
  u.founded = '1998'
  u.industry = 'Others'
  u.revenue = '1000000000'
  u.synopsis = 'We do everything...'
end