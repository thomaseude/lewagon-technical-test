return unless Rails.env.development?

# Clean database
puts "Cleaning database..."
Job.destroy_all
User.destroy_all

# Create users
puts "Creating users..."
test_user = User.create!(email: "test@lewagon.com", password: "secret", company: "Le Wagon", first_name: "John", last_name: "Doe")
other_user = User.create!(email: "miles@cyberdyne.com", password: "secret", company: "Cyberdyne Systems", first_name: "Miles", last_name: "Dyson")

# Create jobs
puts "Creating jobs for our test user..."
test_user.jobs.create!(title: "Associate Product Manager", description: "We are looking for an associate Product Manager to work alongise our VP of Engineering", status: "closed")
test_user.jobs.create!(title: "Software Engineer", description: "We are looking for a software engineer to join our team", status: "open")
test_user.jobs.create!(title: "Event Manager", description: "Our Paris campus is looking for a talented Event Manager", status: "open")

puts "Creating jobs for the other user..."
other_user.jobs.create!(title: "Robotics Expert", description: "You wanted to build a humanoïd robot since you were a kid. Come work with us.", status: "closed")
other_user.jobs.create!(title: "Autonomous System Engineer", description: "Our fleet of robots is looking for an Engineering helping them to become more autonomous", status: "open")
other_user.jobs.create!(title: "AI Robotics Scientist", description: "Our robot team is looking for an AI Robotics Scientist for a special project 'Skynet'", status: "open")
