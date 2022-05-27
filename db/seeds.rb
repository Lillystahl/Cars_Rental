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
carolina = User.create!(email: "carolina@gmail.com", password:"123456", first_name: "Carolina", last_name: "Stahl", date_of_birth: Date.new(2001,2,3))
jiahui = User.create!(email: "jiahui@gmail.com", password:"123456", first_name: "Jiahui", last_name: "Li", date_of_birth: Date.new(2000,12,9))
eric = User.create!(email: "eric@gmail.com", password:"123456", first_name: "Eric", last_name: "Stahl", date_of_birth: Date.new(1999,4,10))

Car.create!(title: "Eric's Car", address: "Dam, Amsterdam", description: "This is one of the first all-electric compact SUVs to hit the market, offering loads of standard features and a genuinely spacious cabin.", price: 10, model_type: "SUV", availability: true, user_id: eric.id)

Car.create!(title: "Jiahui's Car", address: "Elandsstraat, Amsterdam", description: "Sit behind the wheel and the stylish lines of the dashboard will immediately win you over.", price: 50, model_type: "Cabrio", availability: true, user_id: jiahui.id)

Car.create!(title: "Carolina's Car", address: "Leidseplein, Amsterdam", description: "This van features loads of intelligent functionality including remote monitoring, telematics, even geo fencing, alerting you if the van strays out of a predefined area.", price: 100, model_type: "Van", availability: true, user_id: carolina.id)

Car.create!(title: "Carolina's Car",  description: "The driver's seat is fully leather-lined, which is what you get at the Tekna trim level - lots of leather and a seat that is 8-ways adjustable with electric controls. ", price: 100, model_type: "Van", availability: true, user_id: carolina.id)

Car.create!(title: "Carolina's Car",  description: "When you're driving this van, you can see absolutely everything with maximum driver visibility.", price: 100, model_type: "Van", availability: true, user_id: carolina.id)

Car.create!(title: "Carolina's Car",  description: "As a compact van it serves its role very well, the 2148cc engine giving the driver 88bhp and an impressive 220Nm of torque at low revs to move the capacity payload of just under a 1000Kg around.", price: 100, model_type: "Van", availability: true, user_id: carolina.id)

puts "Cars created!"

Car.all.each_with_index do |car, i|
  car.photo.attach(io: File.open("./app/assets/images/cars/car#{i + 1}.jpg"), filename: "car#{i + 1}.jpg", content_type: 'image/jpg')
end

puts "Photos attached!"
