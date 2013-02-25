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

puts 'COURTS'
court = Court.find_or_create_by_name :name => 'HP Pavilion', :description => 'The HP Pavilion at San Jose, formerly known as Compaq Center at San Jose and San Jose Arena is an indoor arena. The arena is also commonly called The Shark Tank.', :lat => 37.3319, :lon => -121.901, :street => '525 W Santa Clara St', :city_state => 'San Jose, CA', :pic_link => ''
puts 'court: ' << court.name
court = Court.find_or_create_by_name :name => 'Ishiyama High School', :description => 'Black top with 8 courts. Home of the Ishiyama Ballas. You will find many teenagers here.', :lat => 37.3419, :lon => -121.901, :street => '123 N First St', :city_state => 'San Jose, CA', :pic_link => ''
puts 'court: ' << court.name
court = Court.find_or_create_by_name :name => '24 Hour Fitness', :description => 'Needs gym membership. Single court.', :lat => 37.3319, :lon => -121.921, :street => '442 E San Carlos St', :city_state => 'San Jose, CA', :pic_link => ''
puts 'court: ' << court.name
court = Court.find_or_create_by_name :name => 'Roland Park', :description => 'Black top with 2 courts. There is a BBQ every Sunday at 2pm.', :lat => 37.3419, :lon => -121.911, :street => '321 W Santa Clara St', :city_state => 'San Jose, CA', :pic_link => ''
puts 'court: ' << court.name
court = Court.find_or_create_by_name :name => 'Highland Middle School', :description => 'Located inside their gym. Contains 2 hardwood courts.', :lat => 37.3219, :lon => -121.908, :street => '876 W San Carlos St', :city_state => 'San Jose, CA', :pic_link => ''
puts 'court: ' << court.name
court = Court.find_or_create_by_name :name => 'Seven Trees Park', :description => 'Modest 2 court setup. Try the churros.', :lat => 37.3239, :lon => -121.890, :street => '234 E San Fernando St', :city_state => 'San Jose, CA', :pic_link => ''
puts 'court: ' << court.name
court = Court.find_or_create_by_name :name => 'Greystone Park', :description => 'Built on top of an Indian burial site.', :lat => 37.349, :lon => -121.895, :street => '328 S Third St', :city_state => 'San Jose, CA', :pic_link => ''
puts 'court: ' << court.name
court = Court.find_or_create_by_name :name => 'Blue Pass Youth Center', :description => 'Black top with 8 courts.', :lat => 37.342, :lon => -121.875, :street => '894 N Fourth St', :city_state => 'San Jose, CA', :pic_link => ''
puts 'court: ' << court.name
court = Court.find_or_create_by_name :name => 'YMCA', :description => 'Young man, theres no need to feel down. 
I said, young man, pick yourself off the ground. I said, young man, cause youre in a new town 
Theres no need to be unhappy.', :lat => 37.120, :lon => -121.921, :street => '44 Winston St', :city_state => 'San Jose, CA', :pic_link => ''
puts 'court: ' << court.name
court = Court.find_or_create_by_name :name => 'Lord of War', :description => 'This court charts the rise and fall of Yuri Orlov, from his early days in the early 1980s in Little Odessa, selling guns to mobsters in his local neighbourhood.', :lat => 37.3139, :lon => -121.911, :street => '626 Monterey Rd', :city_state => 'San Jose, CA', :pic_link => ''
puts 'court: ' << court.name

puts 'COMMENTS'
comment = Comment.find_or_create_by_text :text => 'hello hello', :user_id => 2, :court_id => 4
comment = Comment.find_or_create_by_text :text => 'hello goodbye', :user_id => 3, :court_id => 4