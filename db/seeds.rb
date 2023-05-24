# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Restaurant.destroy_all
5.times do
  category = %w[chinese italian japanese french belgian].sample
  Restaurant.create(name: Faker::DcComics.hero, address: Faker::DcComics.title, phone_number: Faker::Number.number(digits: 10).to_s, category: category)
end
