# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Review.destroy_all
Cinema.destroy_all
User.destroy_all

cinema1 = Cinema.create!(
  name: "Showcase Cinema De Lux",
  address: "West Quay Plus, Southampton",
  description: "A modern cinema with sofa chairs offering a wide selection of both IMAX and 3D films.",
  average_rating: 4.9,
  image_url: "https://lh3.googleusercontent.com/p/AF1QipNS50zUNIQdvsGhqEqA5nvAlr3kTXgMDxiuzlYf=s1360-w1360-h1020"
)

cinema2 = Cinema.create!(
  name: "Vue Cinema Eastleigh",
  address: "Swan center, Eastleigh",
  description: "A modern cinema with IMAX and 3D experiences, great for blockbuster releases.",
  average_rating: 4.2,
  image_url: "https://lh3.googleusercontent.com/p/AF1QipNIHxQ5fJ1ZBmhhn20AddRaPd8rwz3Ee7yK1T8R=s1360-w1360-h1020"
)

cinema3 = Cinema.create!(
  name: "Odeon Southampton",
  address: "Leisure World, Southampton",
  description: "An independent cinema specializing in art house and foreign films.",
  average_rating: 4.8,
  image_url: "https://www.dailyecho.co.uk/resources/images/10198865/?type=responsive-gallery-fullscreen"
)

cinema4 = Cinema.create!(
  name: "Cineworld Whitley",
  address: "Whiteley, Fareham",
  description: "A family-friendly cinema with a variety of movies, from animations to action-packed hits.",
  average_rating: 4.5,
  image_url: "https://lh3.googleusercontent.com/p/AF1QipN-WdVJUt3R8EdtPsGt6wbnxFqCCEDeSkyx7HAb=s1360-w1360-h1020"
)

cinema5 = Cinema.create!(
  name: "Vue Cinema Portsmouth",
  address: "Gunwarf Quay, Portsmouth",
  description: "An outdoor cinema by the sea, perfect for enjoying movies under the stars.",
  average_rating: 4.3,
  image_url: "https://lh3.googleusercontent.com/p/AF1QipNIMwU8q1lGLrL_xGu4Ty1XYNRWPpAsqyEwm-Yk=s1360-w1360-h1020"
)


puts "Cinema table populated"

jon = User.create!(email: 'jon@jon.com', password: 'password', username: "jon")
temi = User.create!(email: 'temi@tayo.com', password: 'password', username: "tee")

puts "User table populated"

Review.create!([
  {
    screen: 1,
    seat: 'A10',
    pref_seat: 'A10',
    content: 'Great experience, comfortable seating!',
    rating: 4.5,
    # image_url: 'https://example.com/review1.jpg',
    cinema_id: cinema1.id,
    user_id: jon.id
  },
  {
    screen: 2,
    seat: 'B5',
    pref_seat: 'H5',
    content: 'The movie was amazing, but the seats were too close to the screen.',
    rating: 3.8,
    # image_url: 'https://example.com/review2.jpg',
    cinema_id: cinema2.id,
    user_id: temi.id
  },
  {
    screen: 3,
    seat: 'C12',
    pref_seat: 'C12',
    content: 'Excellent sound system, great ambience!',
    rating: 5.0,
    # image_url: 'https://example.com/review3.jpg',
    cinema_id: cinema1.id,
    user_id: temi.id
  },
  {
    screen: 1,
    seat: 'D20',
    pref_seat: 'F15',
    content: 'Seats were uncomfortable and the air conditioning was too cold.',
    rating: 2.5,
    # image_url: 'https://example.com/review4.jpg',
    cinema_id: cinema2.id,
    user_id: jon.id
  },
  {
    screen: 4,
    seat: 'A10',
    pref_seat: 'A10',
    content: 'Loved the 3D experience. Truly immersive!',
    rating: 4.9,
    # image_url: 'https://example.com/review5.jpg',
    cinema_id: cinema1.id,
    user_id: temi.id
  }
])

puts "Review table populated"

