# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
User.create([{email: 'user1@gmail.com' , password: '12345' , password_confirmation: '12345'},{email: 'user2@gmail.com' , password: '12345' , password_confirmation: '12345'},{email: 'user3@gmail.com' , password: '12345' , password_confirmation: '12345'},{email: 'user4@gmail.com' , password: '12345' , password_confirmation: '12345'},{email: 'user5@gmail.com' , password: '12345' , password_confirmation: '12345'}])
print "user created"

Doctor.delete_all
Doctor.create([{name: 'Dr Aikenhead'}, {name: 'Dr Mistry'},{name:'Dr Brick Wall'}, {name: 'Dr Ether'}, {name: 'Dr Comfort'}, {name: 'Dr Tranquilli'},
               {name:'Dr Truluck'}, {name: 'Dr Handler'}])
print "doctors created"