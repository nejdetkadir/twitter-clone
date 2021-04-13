# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!({:email => "nejdetkadir.550@gmail.com", :password => "5313235157", :password_confirmation => "5313235157", :fullname => "Nejdet Kadir Bektaş", :username => "nejdetkadirr", :location => "Turkey", :website => "www.nejdetkadirbektas.com", :bio => "hello world!", :birth_date => DateTime.now })

# test users
5.times do |i|
  User.create!({:email => "test#{i}@gmail.com", :password => "5313235157", :password_confirmation => "5313235157", :fullname => "Test User #{i}", :username => "testuser#{i}", :location => "Turkey", :website => "www.testuser#{i}.com", :bio => "hello test user #{i}!", :birth_date => DateTime.now })
end