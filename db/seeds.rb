# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
mateo = User.create(first_name: 'Mateo', last_name: 'Lazo', email: 'mateo@email.com', password: 'Mateo1', password_confirmation: 'Mateo1', role: 'admin');

testHistory = Checkouthistory.create(isbn: 12, email: 'rohitrp2003@gmail.com', checkout: '2011-07-28T23:14:04Z', checkin: '2011-07-28T23:14:04Z')
testHistory = Checkouthistory.create(isbn: 12, email: 'rohitrp2003@gmail.com', checkout: '2011-07-28T23:14:04Z', checkin: '2011-07-28T23:14:04Z')
testHistory = Checkouthistory.create(isbn: 12, email: 'rohitrp2003@gmail.com', checkout: '2011-07-28T23:14:04Z', checkin: '2011-07-28T23:14:04Z')
testHistory = Checkouthistory.create(isbn: 13, email: 'rohitrp2003@gmail.com', checkout: '2011-07-28T23:14:04Z', checkin: '2011-07-28T23:14:04Z')
books_add = Book.create(isbn: 13, title: 'sdfdsf', author: 'sdfsdf', description: 'dsfgfdg', status: 'available')
anshita = User.create(first_name: 'anshita', last_name: 'sayal', email: 'anshita@email.com', password: 'Mateo1', password_confirmation: 'Mateo1', role: 'member')
ankita = User.create(first_name: 'ankita', last_name: 'sayal', email: 'ankita@email.com', password: 'Mateo1', password_confirmation: 'Mateo1', role: 'admin')
testHistory = Checkouthistory.create(isbn: 12, email: 'blah', checkout: '2011-07-28T23:14:04Z')


