10.times.each do
  time = rand(1..50_000).minutes.ago
  Task.create! title: Faker::Lorem.sentence, created_at: time, updated_at: time
end

15.times.each do
  time = rand(1..50_000).minutes.ago
  User.create! name: Faker::Name.name, email: Faker::Internet.email, created_at: time, updated_at: time
end
