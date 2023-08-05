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

# Create simple Users
User.create!(:nickname => 'John Doe', :email => 'john@gmail.com', :password => 'password', :password_confirmation => 'password', :admin => false)
User.create!(:nickname => 'John Morgan', :email => 'morgan@gmail.com', :password => 'password1', :password_confirmation => 'password1', :admin => false)
# Create admin Users
User.create!(:nickname => 'Alex Smith', :email => 'alexsmith@gmail.com', :password => 'password12', :password_confirmation => 'password12', :admin => true)
# Create superadmin Users
User.create!(:nickname => 'superadmin', :email => 'superadmin@gmail.com', :password => 'password123', :password_confirmation => 'password123', :admin => true)

#Create Topics
user1 = User.find_by(email: 'john@gmail.com')
user2 = User.find_by(email: 'morgan@gmail.com')

user1.topics.create!(title: 'Football junior', subject: 'How can I start play football?', category_id: 1)
user2.topics.create!(title: 'World War 2, 1945 year', subject: 'What is plan Anderson?', category_id: 2)

#Create Posts
topic1 = Topic.find_by(subject: 'How can I start play football?')
topic2 = Topic.find_by(subject: 'What is plan Anderson?')

topic1.notes.create!(body: ':)))', user_id: 1)
topic2.notes.create!(body: 'Try to use Wikipedia)', user_id: 2)