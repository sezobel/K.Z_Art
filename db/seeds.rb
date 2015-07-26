# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
desc "Task description"
task :task_name => [:dependent, :tasks] do
	listing=Listing.new
listing.name="sam's first seed listing"
listing.description="sam's first seed description"
listing.price="sam's first seed price"
listing.image_file_name="https://www.dropbox.com/s/in6zb0kqjzpic6v/892178_4569595801355_901033754_o%20%281%29.jpg?dl=0"
listing.save
p "task "" complete"

end
