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
books_add = Book.create(isbn: 11, title: 'anthem', author: 'jim', description: 'sing', status: 'checkedout')
books_add = Book.create(isbn: 12, title: 'Boyhood', author: 'Tim', description: 'Hello', status: 'checkedout')
books_add = Book.create(isbn: 13, title: 'The Sound', author: 'Scott', description: 'music', status: 'available')
anshita = User.create(first_name: 'anshita', last_name: 'sayal', email: 'anshita@email.com', password: 'Mateo1', password_confirmation: 'Mateo1', role: 'member')
ankita = User.create(first_name: 'ankita', last_name: 'sayal', email: 'ankita@email.com', password: 'Mateo1', password_confirmation: 'Mateo1', role: 'admin')
anush = User.create(first_name: 'anush', last_name: 'b', email: 'anush@email.com', password: '123', password_confirmation: '123', role: 'member')
testHistory = Checkouthistory.create(isbn: 12, email: 'anshita@email.com', checkout: '2011-07-28T23:14:04Z')
testHistory = Checkouthistory.create(isbn: 11, email: 'anush@email.com', checkout: '2011-07-28T23:14:04Z')



