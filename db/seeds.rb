# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
mateo = User.create(first_name: 'Mateo', last_name: 'Lazo', email: 'mateo@email.com', password: 'Mateo1', password_confirmation: 'Mateo1', role: 'admin');

predefinedadmin = User.create(first_name: 'Predefinedadmin', last_name: 'Predefinedadmin', email: 'admin@email.com', password: 'admin123', password_confirmation: 'admin123', role: 'admin');
anshita = User.create(first_name: 'anshita', last_name: 'sayal', email: 'anshita@email.com', password: 'Mateo1', password_confirmation: 'Mateo1', role: 'member')
ankita = User.create(first_name: 'ankita', last_name: 'sayal', email: 'ankita@email.com', password: 'Mateo1', password_confirmation: 'Mateo1', role: 'admin')
testHistory = Checkouthistory.create(isbn: 12, email: 'blah', checkout: '2011-07-28T23:14:04Z')
rohit = User.create(first_name: 'rohit', last_name: 'p', email: 'rohit@email.com', password: 'Mateo1', password_confirmation: 'Mateo1', role: 'admin')
anush = User.create(first_name: 'anush', last_name: 'b', email: 'anush@email.com', password: 'Mateo1', password_confirmation: 'Mateo1', role: 'member')
divya = User.create(first_name: 'divya', last_name: 'jain', email: 'divya@email.com', password: 'Mateo1', password_confirmation: 'Mateo1', role: 'member')
prashant = User.create(first_name: 'prashant', last_name: 'gupta', email: 'prashant@email.com', password: 'Mateo1', password_confirmation: 'Mateo1', role: 'member')
haris = User.create(first_name: 'haris', last_name: 'ansari', email: 'haris@email.com', password: 'Mateo1', password_confirmation: 'Mateo1', role: 'member')
shruti = User.create(first_name: 'shruti', last_name: 'singh', email: 'shruti@email.com', password: 'Mateo1', password_confirmation: 'Mateo1', role: 'admin')
ayesha = User.create(first_name: 'ayesha', last_name: 'bari', email: 'ayesha@email.com', password: 'Mateo1', password_confirmation: 'Mateo1', role: 'member')
hardesh = User.create(first_name: 'hardesh', last_name: 'khatri', email: 'hardesh@email.com', password: 'Mateo1', password_confirmation: 'Mateo1', role: 'member')
hafsa = User.create(first_name: 'hafsa', last_name: 'mustafa', email: 'hafsa@email.com', password: 'Mateo1', password_confirmation: 'Mateo1', role: 'member')
books_add1 = Book.create(isbn: 14, title: 'Introduction to mathematics', author: 'rastogi vinayak', description: 'Introduction to mathematics', status: 'available')
books_add2 = Book.create(isbn: 15, title: 'Introduction to english', author: 'veena kapoor', description: 'Introduction to english', status: 'available')
books_add3 = Book.create(isbn: 16, title: 'Introduction to hindi', author: 'rastogi vinayak', description: 'Introduction to hindi', status: 'available')
books_add4 = Book.create(isbn: 17, title: 'Introduction to sanskrit', author: 'edward solomon', description: 'Introduction to sanskrit', status: 'available')
books_add5 = Book.create(isbn: 18, title: 'Introduction to french', author: 'rastogi vinayak', description: 'Introduction to french', status: 'available')
books_add6 = Book.create(isbn: 19, title: 'Introduction to german', author: 'stephen heber', description: 'Introduction to german', status: 'available')
books_add7 = Book.create(isbn: 20, title: 'Introduction to history', author: 'solomon hykes', description: 'Introduction to history', status: 'available')
books_add8 = Book.create(isbn: 21, title: 'Introduction to physics', author: 'hc verma', description: 'Introduction to physics', status: 'available')
books_add9 = Book.create(isbn: 22, title: 'Introduction to chemistry', author: 'lakhmir singh', description: 'Introduction to chemistry', status: 'available')
books_add10 = Book.create(isbn: 23, title: 'Introduction to biology', author: 'manjeet kaur', description: 'Introduction to biology', status: 'available')
books_add11 = Book.create(isbn: 24, title: 'Introduction to zoology', author: 'lakhi makhi', description: 'Introduction to zoology', status: 'available')
books_add12 = Book.create(isbn: 25, title: 'Advance level zoology', author: 'lakhi makhi', description: 'Advance level zoology', status: 'checked out', current_owner:'haris@email.com')
books_add13 = Book.create(isbn: 26, title: 'Advance level biology', author: 'lakhmir singh', description: 'Advance level biology', status: 'available')
books_add14 = Book.create(isbn: 27, title: 'Advance level chemistry', author: 'edward solomon', description: 'Advance level chemistry', status: 'checked out', current_owner:'hafsa@email.com')
books_add15 = Book.create(isbn: 28, title: 'Advance level physics', author: 'hc verma', description: 'Advance level physics', status: 'checked out', current_owner:'shruti@email.com')
books_add16 = Book.create(isbn: 29, title: 'Advance level chemistry', author: 'solomon freddie', description: 'Advance level chemistry', status: 'checked out', current_owner:'haris@email.com')
books_add17 = Book.create(isbn: 30, title: 'Advance level history', author: 'chandan dhawan', description: 'Advance level history', status: 'available')
books_add18 = Book.create(isbn: 31, title: 'Advance level german', author: 'divya jain', description: 'Advance level german', status: 'checked out', current_owner:'divya@email.com')
books_add19 = Book.create(isbn: 32, title: 'Advance level sanskrit', author: 'prasad gupta', description: 'Advance level sanskrit', status: 'checked out', current_owner:'hardesh@email.com')
books_add20 = Book.create(isbn: 33, title: 'Advance level hindi', author: 'divya jain, prasad gupta', description: 'Advance level hindi', status: 'checked out', current_owner:'hardesh@email.com')

testHistory = Checkouthistory.create(isbn: 25, email: 'haris@email.com', checkout: '2015-07-28T23:14:04Z')
testHistory = Checkouthistory.create(isbn: 26, email: 'shruti@email.com', checkout: '2015-07-23T23:14:04Z')
testHistory = Checkouthistory.create(isbn: 27, email: 'hafsa@email.com', checkout: '2015-07-8T23:14:04Z')
testHistory = Checkouthistory.create(isbn: 28, email: 'shruti@email.com', checkout: '2015-04-8T23:14:04Z')
testHistory = Checkouthistory.create(isbn: 29, email: 'haris@email.com', checkout: '2014-12-18T23:14:04Z')
testHistory = Checkouthistory.create(isbn: 30, email: 'hafsa@email.com', checkout: '2015-09-8T23:14:04Z')
testHistory = Checkouthistory.create(isbn: 31, email: 'divya@email.com', checkout: '2015-03-2T23:14:04Z')
testHistory = Checkouthistory.create(isbn: 32, email: 'hardesh@email.com', checkout: '2015-02-05T23:14:04Z')
testHistory = Checkouthistory.create(isbn: 33, email: 'hardesh@email.com', checkout: '2015-01-07T23:14:04Z')
testHistory = Checkouthistory.create(isbn: 25, email: 'haris@email.com', checkout: '2015-08-28T23:14:04Z')
testHistory = Checkouthistory.create(isbn: 26, checkout: '2015-08-23T23:14:04Z', checkin: '2015-09-28T23:14:04Z')
testHistory = Checkouthistory.create(isbn: 30, checkout: '2015-09-8T23:14:04Z', checkin: '2015-07-28T23:14:04Z')
testHistory = Checkouthistory.create(isbn: 14, checkout: '2015-09-8T23:14:04Z', checkin: '2015-07-28T23:14:04Z')
testHistory = Checkouthistory.create(isbn: 19, checkout: '2015-09-8T23:14:04Z', checkin: '2015-07-28T23:14:04Z')



