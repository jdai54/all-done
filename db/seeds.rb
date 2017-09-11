require 'random_data'

5.times do
  User.create!(
    email: Faker::Internet.email,
    password: Faker::Internet.password
  )
end

users = User.all

10.times do
  Item.create!(
    name: RandomData.random_sentence,
    user: users.sample
  )
end

User.create!(
  email: 'user@example.com',
  password: 'password'
)

puts "seed finished"
puts "#{User.count} users created"
puts "#{Item.count} items created"
