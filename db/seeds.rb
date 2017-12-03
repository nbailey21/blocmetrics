require 'faker'

# Create Applications
10.times do
  RegisteredApplication.create!(
    name: Faker::Team.mascot,
    url: Faker::Internet.url,
  )
end
applications = RegisteredApplication.all

# Create Events
40.times do
  Event.create!(
    name: Faker::Space.galaxy,
    registered_application: applications.sample
  )
end

RegisteredApplication.create!(
  name: Faker::Team.mascot,
  url: 'https://www.theringer.com/'
  )

puts "Seed finished"
puts "#{RegisteredApplication.count} applications created"
puts "#{Event.count} events created"
