# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Car.destroy_all
User.destroy_all
carolina = User.create!(email: "carolina'sdede@gmail.com", password:"123456", first_name: "Carolina", last_name: "Stahl", date_of_birth: Date.new(2001,2,3))
jiahui = User.create!(email: "jiahui'sede@gmail.com", password:"123456", first_name: "Jiahui", last_name: "Li", date_of_birth: Date.new(2000,12,9))
eric = User.create!(email: "ericäede@gmail.com", password:"123456", first_name: "Eric", last_name: "Stahl", date_of_birth: Date.new(1999,4,10))
Car.create!(title: "Eric's Car",  description: "It's great", price: 10, model_type: "SUV", availability: true, user_id: eric.id)
Car.create!(title: "Jiahui's Car",  description: "It's super great", price: 50, model_type: "Cabrio", availability: true, user_id: jiahui.id)
Car.create!(title: "Carolina's Car",  description: "It's fancy", price: 100, model_type: "Van", availability: true, user_id: carolina.id)
Car.create!(title: "Freddy's Car",  description: "It's fancy", price: 100, model_type: "Van", availability: true, user_id: carolina.id)
Car.create!(title: "Toby's Car",  description: "It's fancy", price: 100, model_type: "Van", availability: true, user_id: carolina.id)
Car.create!(title: "Johanna's Car",  description: "It's fancy", price: 100, model_type: "Van", availability: true, user_id: carolina.id)
Car.create!(title: "Mael's Car",  description: "It's fancy", price: 100, model_type: "Van", availability: true, user_id: carolina.id)
