# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

topics_detail = [
  { title: "Books", description: "Books Related Discusssion" },
  { title: "Movies", description: "Movies Related Discussion" },
  { title: "Travel", description: "Travel Related Discussion" },
  { title: "History", description: "History Related Discssion" }
]

topics_detail.each do |topic_detail|
  Topic.find_or_create_by(topic_detail)
end
