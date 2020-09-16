##### Prerequisites

The setups steps expect following tools installed on the system.

- Github
- Ruby [6.0.3]
- Rails [2.5.3]

##### 1. Check out the repository

git clone https://github.com/rajputakku/Appointment-Booking-Api.git

##### 2. Install dependencies

bundle install

##### 3. Create and setup the database

Run the following commands to create and setup the database.

rails db:create db:migrate db:seed

##### 4. Start the Rails server

You can start the rails server using the command given below.

rails s

And now you can visit the site with the URL http://localhost:3000