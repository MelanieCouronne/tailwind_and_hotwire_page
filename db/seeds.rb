require "csv"

puts' '
print "Hello! "
puts "\u{1F44B}"
print "Let's load some seeds "
puts "\u{1F331}"

puts ' '
print 'First, destroy old seeds '
puts "\u{1F4A5}"
puts '... ... ...'
Story.destroy_all
puts 'Old seeds destroyed!'
puts ' '

filepath = "db/seed.csv"
puts ' '
print "\u{1F6A7}"
print ' Creating stories '
puts "\u{1F4AC}"


CSV.foreach(filepath, headers: :first_row, quote_char: "|") do |row|
  story = row[0].split(";")

  universe_max_age    = story[0].to_i
  universe_min_age    = story[1].to_i
  universe_name       = story[2]
  description         = story[3]
  title               = story[4]
  cloudinary_key      = story[5]

  Story.create!(universe_max_age: universe_max_age, universe_min_age: universe_min_age, universe_name: universe_name, description: description, title: title, cloudinary_key: cloudinary_key )

end

puts '... ... ...'
print "\u{2728} "
puts "Created #{Story.count} stories"
puts ' '
