# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "faker"

Job.destroy_all

JOBTYPE = %w(full_time part_time contract temporary internship volunteer other).freeze

5.times do 
  Job.create(title: Faker::Job.title, description: Faker::Job.field, location: Faker::Address.city, salary: Faker::Number.number(digits: 5), job_type: JOBTYPE.sample)
end

puts "Created #{Job.count} jobs"