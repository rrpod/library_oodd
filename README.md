LibSys : Library Management System
Team member : Rohit Poduval(rrpoduva), Anshita Sayal(asayal), Anush Bonam(abonam)

Project URL: http://whispering-lowlands-4535.herokuapp.com
**Preconfigured Admin Credentials:**

First Name : Predefinedadmin
Last Name : Predefinedadmin
Email : admin@email.com
Password : admin123

**Without Logging In** : The root URL of the application shows the list of books in the system by default and has the following contents:

On clicking on the, List of Books button, in the top portion of the screen, shows the list of books.
The user is also able to search for books based on ISBN or title or author or description or status and just view the book details.
Login button is provided where user has to enter emailID and password to login to the application.
Sign Up button is provided which asks for user's First Name(maximum length 50), Last Name(maximum length 50), email ID, Password(Minimum length 6) and Password Confirmation(Minimum length 6).
	If any of the above field length requirements are violated and 'Sign Up' button is clicked, the system does not add the user to the system.
	Otherwise, on clicking on 'Sign Up' the user gets added to the system as a member.

**Login as ADMIN:**

-> Edit her/his profile details: On successful login, Edit profile option is available in the drop down on clicking on the email ID displayed in the top right portion of the screen.
	A form is displayed with First Name(maximum length 50), Last Name(maximum length 50), email ID(Not editable), Password(Minimum length 6) and Password Confirmation(Minimum length 6).
	If any of the above field length requirements are violated and 'Update Profile' button is clicked, the system throws an error 'could not update profile' and new admin is not created. 

Manage admins
-> Create new admins: This functionality is available in the 'Manage Admins' drop down list as 'Create New Admin' list item.
	A form is displayed with First Name(maximum length 50), Last Name(maximum length 50), email ID(Not editable), Password(Minimum length 6) and Password Confirmation(Minimum length 6).
	If any of the above field length requirements are violated and 'Create Admin' button is clicked, the system throws an error 'could not update profile' and new admin is not created. 	
-> View the list of all the admins and their profile details (except password) : Click on Manage Admins > View All Admins
-> Delete admins (except herself/himself and the pre-configured Admin) : Click on Manage Admins > View All Admins >Delete option in last table column

Manage books : 
-> Add a book to the system: Click on 'New Book' button on top portion of the screen
-> View the list of all the books: Click on 'List of Books' button on top portion of the screen
-> View the details of a book: Click on 'List of Books' button on top portion of the screen shows the details of books.
-> Edit the details of a book: Click on 'List of Books' button on top portion of the screen shows a table in which the last column has Edit button.
-> Admin can also change the status of a book: Steps: 
	1.Click on 'List of Books' button on top portion of the screen>
	2.If book is available admin is given a drop down list of all member email ids >
	3.Select specific email ID to checkout the book for > Click on 'Checkout' Button> 
	4.Dialog box pops up asking for confirmation Yes/No >
	5.If Yes is clicked the book is checked out to the selected user. 
-> View the checkout history of a book: Click on 'List of Books' button on top portion of the screen shows a table in which the last column has 'View Checkout History' button.
-> Delete a book from the system: Click on 'List of Books' button on top portion of the screen shows a table in which the last column has 'Delete' button.

Manage Library Members
-> View the list of all the library members and their profile details (except password): Click on Manage Users > View All Users
-> View the checkout history of a library member: Click on Checkout History Button on top portion of the screen > Enter email ID os the user > Click on Search
-> Delete a library member: Click on Manage Users > View All Users > Delete button in the last column

**Login as LIBRARY MEMBER**

-> Edit her/his profile details: On successful login, Edit profile option is available in the drop down on clicking on the email ID displayed in the top right portion of the screen.
	A form is displayed with First Name(maximum length 50), Last Name(maximum length 50), email ID(Not editable), Password(Minimum length 6) and Password Confirmation(Minimum length 6).
	If any of the above field length requirements are violated and 'Update Profile' button is clicked, the system throws an error 'could not update profile' and new admin is not created. 
-> Search books using ISBN or title or author or description or status: Search box is on the top portion of the screen.
-> View the details of a book: When user logs in book details are populated by default. They can also be searched in the search box.
-> Check out a book if its status is ‘Available': Click on List of Books > Action column of the table > Checkout Button
-> Return her/his checked out book: Click on List of Books > Action column of the table > Return Button for books whose status is checked out
-> View own checkout history: Click on 'Checkout History' button on the top portion of the screen.




