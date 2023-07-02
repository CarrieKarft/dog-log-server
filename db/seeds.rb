puts "🌱 Seeding spices..."

# Seed your database here
Dog.create(
    name: "Timmy",
    breed: "Corgi" ,
    age: 4,
    energy_level: "medium",
    medication: "No medication needed"
)
Dog.create(
    name: "Sasha",
    breed: "Bulldog", 
    age: 7,
    energy_level: "low",
    medication: "May need inhaler"
)
Dog.create(
    name: "Baby Girl",
    breed: "Huskie", 
    age: 2,
    energy_level: "high",
    medication: "No medication needed"
)
Dog.create(
    name: "Ollie",
    breed: "Black Lab",
    age: 10,
    energy_level: "medium",
    medication: "Needs insulin shot at 12PM"
)

Dog.all.each do |dog|
    rand(1..4).times do
        Walk.create(location: Faker::Address.street_name, used_bathroom: rand(0..1), duration_in_minutes: rand(30..120), distance_in_miles: rand(1.0..6.0), medication_given: rand(0..1), notes: "NA", dog_id: dog.id)
    end
end

puts "✅ Done seeding!"
