# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Author.destroy_all
Post.destroy_all
Company.destroy_all
Job.destroy_all
Applicant.destroy_all
Application.destroy_all

authors = [
  "Jane Austen",
  "Mark Twain",
  "Virginia Woolf",
  "James Baldwin",
  "Toni Morrison",
  "George Orwell"
]

posts = [
  "The Art of Writing",
  "Reflections on Society",
  "A Journey Through Time",
  "On the Power of Words",
  "Memoirs of a Novelist",
  "The Future of Literature"
]

companies = Company.create!([
  { name: "TechCorp", industry: "Software" },
  { name: "HealthPlus", industry: "Healthcare" }
])

jobs = Job.create!([
  { title: "Backend Developer", description: "Work on APIs.", company: companies[0] },
  { title: "Nurse", description: "Provide patient care.", company: companies[1] }
])

applicants = Applicant.create!([
  { name: "Charlie", email: "charlie@example.com" },
  { name: "Dana", email: "dana@example.com" }
])

Application.create!([
  { job: jobs[0], applicant: applicants[0], status: "pending", cover_letter: "I love APIs!" },
  { job: jobs[1], applicant: applicants[1], status: "pending", cover_letter: "I care about patients!" }
])

authors.each do |author|
  Author.create(name: author)
end

posts.each do |post|
  Post.create(title: post)
end
