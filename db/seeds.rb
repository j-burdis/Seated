# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Favourite.destroy_all
Vote.destroy_all
Comment.destroy_all
Review.destroy_all
Cinema.destroy_all
User.destroy_all

cinema1 = Cinema.create!(
  name: "Picturehouse Brixton",
  address: "Coldharbour Lane, London, SW2 1JW",
  description: "A vibrant cinema located in the heart of Brixton, known for its eclectic film selection.",
  average_rating: 4.5,
  image_url: "https://www.accesscard.online/asset/image/provider/clapham-picturehouse.jpg"
)

cinema2 = Cinema.create!(
  name: "Picturehouse Finsbury Park",
  address: "180 St John's Rd, London, N19 5QJ",
  description: "A modern cinema with multiple screens, offering a diverse film lineup.",
  average_rating: 4.4,
  image_url: "https://www.accesscard.online/asset/image/provider/clapham-picturehouse.jpg"
)

cinema3 = Cinema.create!(
  name: "Picturehouse Fulham Road",
  address: "205 Fulham Rd, London, SW3 6HJ",
  description: "A stylish cinema known for its exclusive screenings and events.",
  average_rating: 4.3,
  image_url: "https://www.accesscard.online/asset/image/provider/clapham-picturehouse.jpg"
)

cinema4 = Cinema.create!(
  name: "Picturehouse Hackney",
  address: "270 Mare St, London, E8 1HE",
  description: "A bustling social hub with a lively atmosphere and great film selection.",
  average_rating: 4.5,
  image_url: "https://www.accesscard.online/asset/image/provider/clapham-picturehouse.jpg"
)

cinema5 = Cinema.create!(
  name: "Picturehouse Stratford",
  address: "Theatre Square, London, E15 1BX",
  description: "A cinema located near the Olympic Park, showcasing a variety of films.",
  average_rating: 4.5,
  image_url: "https://www.accesscard.online/asset/image/provider/clapham-picturehouse.jpg"
)

cinema6 = Cinema.create!(
  name: "The Ritzy Picturehouse",
  address: "160 Brixton Rd, London, SW9 8HA",
  description: "One of the oldest cinemas in London, known for its vibrant community events.",
  average_rating: 4.7,
  image_url: "https://www.accesscard.online/asset/image/provider/clapham-picturehouse.jpg"
)

cinema7 = Cinema.create!(
  name: "Picturehouse West Norwood",
  address: "449A Norwood Rd, London, SE27 9DQ",
  description: "A community-focused cinema offering a unique selection of films.",
  average_rating: 4.3,
  image_url: "https://www.accesscard.online/asset/image/provider/clapham-picturehouse.jpg"
)

cinema8 = Cinema.create!(
  name: "Vue Cinema Stratford",
  address: "The Theatre, Westfield Stratford City, 1A Montfichet Rd, London, E20 1EJ",
  description: "A key feature of the Westfield Stratford City complex, providing a range of viewing options.",
  average_rating: 4.6,
  image_url: "https://www.gateway978.com/wordpress/wp-content/uploads/2024/07/vue-web.jpg"
)

cinema9 = Cinema.create!(
  name: "Vue Cinema Walthamstow",
  address: "The Mall, 4, 5, 6, 7 Selborne Walk, Walthamstow, London, E17 7JH",
  description: "Situated in the heart of Walthamstow, Vue offers a great cinematic experience with multiple screens.",
  average_rating: 4.4,
  image_url: "https://www.gateway978.com/wordpress/wp-content/uploads/2024/07/vue-web.jpg"
)

cinema10 = Cinema.create!(
  name: "Vue Cinema Westfield White City",
  address: "Westfield London, Ariel Way, White City, London, W12 7GF",
  description: "Located in the bustling Westfield shopping center, Vue White City is perfect for a movie day out.",
  average_rating: 4.5,
  image_url: "https://www.gateway978.com/wordpress/wp-content/uploads/2024/07/vue-web.jpg"
)

cinema11 = Cinema.create!(
  name: 'Odeon Leicester Square',
  address: '24-26 Leicester Square, London, WC2H 7JY',
  description: 'An iconic cinema known for hosting film premieres and events, featuring luxury seating and state-of-the-art technology.',
  average_rating: nil,
  image_url: 'https://www.opia.com/wp-content/uploads/2022/10/Odeon.png'
)

cinema12 = Cinema.create!(
  name: 'Odeon BFI IMAX',
  address: '1 Charlie Chaplin Walk, London, SE1 8XR',
  description: 'The UK\'s largest cinema screen, known for its immersive experience and IMAX films.',
  average_rating: nil,
  image_url: 'https://www.opia.com/wp-content/uploads/2022/10/Odeon.png'
)

cinema13 = Cinema.create!(
  name: 'Odeon Greenwich',
  address: 'Duncan Rd, Greenwich, London, SE10 9SW',
  description: 'A modern cinema with the latest technology, offering a great selection of films.',
  average_rating: nil,
  image_url: 'https://www.opia.com/wp-content/uploads/2022/10/Odeon.png'
)

cinema14 = Cinema.create!(
  name: "Everyman Hampstead",
  address: "163 Haverstock Hill, Hampstead, London, NW3 4RP",
  description: "Situated in a charming area, this cinema features luxurious seating and a relaxed atmosphere.",
  average_rating: nil,
  image_url: "https://i.ytimg.com/vi/1ml4hLVjAw4/maxresdefault.jpg"
)

cinema15 = Cinema.create!(
  name: "Everyman Islington",
  address: "Screen on the Green, 83 Upper Street, Islington, London, N1 0NP",
  description: "A modern cinema experience in the heart of Islington, known for its comfortable seating.",
  average_rating: nil,
  image_url: "https://i.ytimg.com/vi/1ml4hLVjAw4/maxresdefault.jpg"
)

cinema16 = Cinema.create!(
  name: "Everyman Baker Street",
  address: "96 Baker Street, London, NW1 6XL",
  description: "A stylish cinema featuring a bar and a unique cinema experience in the heart of London.",
  average_rating: nil,
  image_url: "https://i.ytimg.com/vi/1ml4hLVjAw4/maxresdefault.jpg"
)

cinema17 = Cinema.create!(
  name: "Everyman Crystal Palace",
  address: "25 Church Road, Crystal Palace, London, SE19 2TF",
  description: "Offering a relaxed atmosphere with plush seating and gourmet food options.",
  average_rating: nil,
  image_url: "https://i.ytimg.com/vi/1ml4hLVjAw4/maxresdefault.jpg"
)

cinema18 = Cinema.create!(
  name: "Everyman King's Cross",
  address: "The Regent, 32-34 King's Boulevard, London, N1C 4AX",
  description: "A modern cinema experience located near King's Cross with luxury seating and dining options.",
  average_rating: nil,
  image_url: "https://i.ytimg.com/vi/1ml4hLVjAw4/maxresdefault.jpg"
)

cinema19 = Cinema.create!(
  name: "Everyman Barnet",
  address: "Barnet, London, EN5 5TW",
  description: "Located in a bustling area, providing a comfortable and unique cinema experience.",
  average_rating: nil,
  image_url: "https://i.ytimg.com/vi/1ml4hLVjAw4/maxresdefault.jpg"
)

cinema20 = Cinema.create!(
  name: "Everyman Stratford",
  address: "The Broadway, Stratford, London, E15 4BQ",
  description: "Featuring a range of films in a stylish environment, offering an enhanced cinema experience.",
  average_rating: nil,
  image_url: "https://i.ytimg.com/vi/1ml4hLVjAw4/maxresdefault.jpg"
)

cinema21 = Cinema.create!(
  name: "Curzon Bloomsbury",
  address: "The Brunswick Centre, London, WC1N 1AW",
  description: "Welcoming cinema with a café and bar.",
  average_rating: 4.5,
  image_url: "https://static.standard.co.uk/2022/11/30/11/newFile-13.jpg?width=1200&auto=webp&quality=75"
)

cinema22 = Cinema.create!(
  name: "Curzon Camden",
  address: "96-98 Camden High St, London, NW1 0LT",
  description: "A vibrant spot featuring independent films.",
  average_rating: 4.6,
  image_url: "https://static.standard.co.uk/2022/11/30/11/newFile-13.jpg?width=1200&auto=webp&quality=75"
)

cinema23 = Cinema.create!(
  name: "Curzon Hoxton",
  address: "106-108 Hoxton St, London, N1 6LP",
  description: "Quirky venue for film lovers.",
  average_rating: 4.8,
  image_url:"https://static.standard.co.uk/2022/11/30/11/newFile-13.jpg?width=1200&auto=webp&quality=75"
)

puts "Cinema table populated"

jon = User.create!(email: 'jon@jon.com', password: 'password', username: "just_jon")
temi = User.create!(email: 'temi@tayo.com', password: 'password', username: "tee")
harvi = User.create!(email: 'harvi@max.com', password: 'password', username: "mr_singh")
shan = User.create!(email: 'shan@shan.com', password: 'password', username: "bambambaluyos")

users = [jon, temi, harvi, shan]

puts "User table populated"

cinemas = [
  cinema1, cinema2, cinema3, cinema4, cinema5, cinema6, cinema7, cinema8, cinema9, cinema10,
  cinema11, cinema12, cinema13, cinema14, cinema15, cinema16, cinema17, cinema18, cinema19,
  cinema21, cinema22, cinema23
]

review_contents = [
  "An amazing cinema! The staff was friendly and the atmosphere was welcoming.",
  "Great experience overall! The seating was comfortable and the movie selection was excellent.",
  "I loved the sound quality in this cinema. It made the movie feel so immersive!",
  "The snacks were delicious, and the cinema was clean and well-maintained.",
  "Fantastic service! The staff went out of their way to make our visit enjoyable.",
  "I will definitely return! The cinema had a great vibe and fantastic screens.",
  "What a great experience! The layout was perfect, making it easy to find our seats.",
  "The movie selection was impressive, with all the latest releases available.",
  "A clean and friendly environment! I highly recommend this cinema to everyone.",
  "The reclining seats were a game changer for my movie night!",
  "Awesome sound and picture quality! It made the film so much more enjoyable.",
  "The staff was very helpful when we needed assistance. Great customer service!",
  "What a fantastic experience! I felt like I was part of the movie.",
  "The popcorn was fresh and perfectly salted. I could not get enough!",
  "Loved the atmosphere! The lighting and decor were so inviting.",
  "It is my new favorite cinema! I am already planning my next visit.",
  "The location is perfect, making it easy to get to and from the cinema.",
  "Loved the comfortable seating. I was able to enjoy the entire film without discomfort.",
  "The ticket prices were reasonable for such a great experience.",
  "I appreciated the cleanliness of the restrooms and lobby area.",
  "This cinema has become my go-to spot for movie nights with friends.",
  "The pre-show entertainment was enjoyable and made waiting more fun.",
  "I can not wait to come back! The whole experience was delightful.",
  "The 3D experience here is exceptional! Worth every penny.",
  "I enjoyed every moment in this cinema. A wonderful outing!",
  "The seats were uncomfortable, and the movie started late. I won't be returning anytime soon.",
  "Terrible service! The staff were rude, and the popcorn was stale. Very disappointing experience.",
  "The cinema was overcrowded and noisy, making it hard to enjoy the film. Not worth the visit.",
  "Average experience, but the ticket prices are a bit high for the quality.",
  "The screen quality was subpar, and I couldn't focus on the movie.",
  "I was unhappy with the cleanliness. The floors were sticky, and it was off-putting."
]

cinemas.each do |cinema|
  # Choose a random number of reviews for each cinema (between 2 and 4)
  number_of_reviews = [2, 3, 4].sample

  # Ensure we don't exceed the number of unique users available
  number_of_reviews = [number_of_reviews, users.size].min

  # Shuffle the users and select a unique subset based on the number of reviews
  selected_users = users.shuffle.first(number_of_reviews)

  # Create reviews for each selected user
  selected_users.each do |user|
    # Select unique review content for each review
    content = review_contents.sample
    # review_contents.delete(content) # Remove the used content to avoid duplicates

    Review.create!(
      screen: rand(1..5),
      seat: "#{('A'..'H').to_a.sample}#{rand(1..20)}",
      pref_seat: "#{('A'..'H').to_a.sample}#{rand(1..20)}",
      content: content,
      rating: rand(3.5..5.0).round(1),
      cinema_id: cinema.id,
      user_id: user.id
    )
  end
end


puts "Review table populated"
