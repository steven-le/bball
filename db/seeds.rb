# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Environment variables (ENV['...']) are set in the file config/application.yml.
# See http://railsapps.github.com/rails-environment-variables.html
puts 'ROLES'
YAML.load(ENV['ROLES']).each do |role|
  Role.find_or_create_by_name({ :name => role }, :without_protection => true)
  puts 'role: ' << role
end
puts 'DEFAULT USERS'
user = User.find_or_create_by_email :name => ENV['ADMIN_NAME'].dup, :email => ENV['ADMIN_EMAIL'].dup, :password => ENV['ADMIN_PASSWORD'].dup, :password_confirmation => ENV['ADMIN_PASSWORD'].dup
puts 'user: ' << user.name
user.add_role :admin
user1 = User.find_or_create_by_email :name => 'user1', :email => 'user1@test.com', :password => 'testtest', :password_confirmation => 'testtest'
puts 'user: ' << user1.name
user1.add_role :user
user2 = User.find_or_create_by_email :name => 'user2', :email => 'user2@test.com', :password => 'testtest', :password_confirmation => 'testtest'
puts 'user: ' << user2.name
user2.add_role :user
user3 = User.find_or_create_by_email :name => 'user3', :email => 'user3@test.com', :password => 'testtest', :password_confirmation => 'testtest'
puts 'user: ' << user3.name
user3.add_role :user
user4 = User.find_or_create_by_email :name => 'user4', :email => 'user4@test.com', :password => 'testtest', :password_confirmation => 'testtest'
puts 'user: ' << user4.name
user4.add_role :user
user5 = User.find_or_create_by_email :name => 'user5', :email => 'user5@test.com', :password => 'testtest', :password_confirmation => 'testtest'
puts 'user: ' << user5.name
user5.add_role :user