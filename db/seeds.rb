# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


# Create categories
categories = [
  { name: 'Sports' },
  { name: 'History' }
]

categories.each do |category|
  Category.create!(category)
end

# Create Users
User.create!(:nickname => 'John Doe', :email => 'john@gmail.com', :password => 'password', :password_confirmation => 'password', :admin => false)
User.create!(:nickname => 'John Morgan', :email => 'morgan@gmail.com', :password => 'password1', :password_confirmation => 'password1', :admin => false)
User.create!(:nickname => 'Alex Smith', :email => 'alexsmith@gmail.com', :password => 'password12', :password_confirmation => 'password12', :admin => true)
