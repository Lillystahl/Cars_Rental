# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

Car.destroy_all
User.destroy_all
carolina = User.create!(email: "carolina'sdede@gmail.com", password:"123456", first_name: "Carolina", last_name: "Stahl", date_of_birth: Date.new(2001,2,3))
jiahui = User.create!(email: "jiahui'sede@gmail.com", password:"123456", first_name: "Jiahui", last_name: "Li", date_of_birth: Date.new(2000,12,9))
eric = User.create!(email: "ericäede@gmail.com", password:"123456", first_name: "Eric", last_name: "Stahl", date_of_birth: Date.new(1999,4,10))

Car.create!(title: "Eric's Car", address: "Dam, Amsterdam", description: "It's great", price: 10, model_type: "SUV", availability: true, user_id: eric.id)

Car.create!(title: "Jiahui's Car", address: "Elandsstraat, Amsterdam", description: "It's super great", price: 50, model_type: "Cabrio", availability: true, user_id: jiahui.id)

Car.create!(title: "Carolina's Car", address: "Leidseplein, Amsterdam", description: "It's fancy", price: 100, model_type: "Van", availability: true, user_id: carolina.id)

Car.create!(title: "Freddy's Car", address: "Singel, Amsterdam", description: "It's fancy", price: 100, model_type: "Van", availability: true, user_id: carolina.id)

Car.create!(title: "Toby's Car", address: "Prinsengracht, Amsterdam", description: "It's fancy", price: 100, model_type: "Van", availability: true, user_id: carolina.id)

Car.create!(title: "Johanna's Car", address: "Keizersgracht, Amsterdam", description: "It's fancy", price: 100, model_type: "Van", availability: true, user_id: carolina.id)

puts "Cars created!"
# file = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg',"rb")
# Car.all.each do |car|
#   car.photo.attach(io: File.open("./app/assets/images/cars/car1.jpg"), filename: 'car1.png', content_type: 'image/jpg')
#   car.photo.attach(io: File.open("./app/assets/images/cars/car2.jpg"), filename: 'car2.jpg', content_type: 'image/jpg')
#   car.photo.attach(io: File.open("./app/assets/images/cars/car3.jpg"), filename: 'car3.jpg', content_type: 'image/jpg')
#   car.photo.attach(io: File.open("./app/assets/images/cars/car4.jpg"), filename: 'car4.jpg', content_type: 'image/jpg')
#   car.photo.attach(io: File.open("./app/assets/images/cars/car5.jpg"), filename: 'car5.jpg', content_type: 'image/jpg')
#   car.photo.attach(io: File.open("./app/assets/images/cars/car6.jpg"), filename: 'car6.jpg', content_type: 'image/jpg')
# end
Car.all.each_with_index do |car, i|
  car.photo.attach(io: File.open("./app/assets/images/cars/car#{i + 1}.jpg"), filename: "car#{i + 1}.jpg", content_type: 'image/jpg')
end

puts "Photos attached!"
