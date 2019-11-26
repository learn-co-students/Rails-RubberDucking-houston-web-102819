Student.destroy_all
Duck.destroy_all

student_ids = []
10.times do
  student = Student.create(name: Faker::Name.name, mod: rand(1..5))
  student_ids.push(student.id)
end

5.times do
  Duck.create(name: Faker::Dog.meme_phrase, description: Faker::Dog.breed, student_id: student_ids.sample())
end
