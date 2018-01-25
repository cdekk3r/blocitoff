5.times do
    User.create!(
        email: Faker::Internet.email,
        password: Faker::Internet.password(8)
    )
end

user = User.create!(
    email: 'user@user.com',
    password: 'password'
)

users = User.all

20.times do
    Item.create!(
        name: Faker::Company.bs,
        user: users.sample
    )
end

puts "Seeds finished"
puts "#{User.count} users created"
puts "#{Item.count} items created"