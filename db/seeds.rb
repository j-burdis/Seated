# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Notification.destroy_all
Favourite.destroy_all
Vote.destroy_all
Comment.destroy_all
Review.destroy_all
Cinema.destroy_all
User.destroy_all

cinema1 = Cinema.create!(
  name: "The Ritzy Picturehouse",
  address: "Brixton Oval, Coldharbour Lane, London, SW2 1JG",
  description: "A vibrant cinema located in the heart of Brixton, known for its eclectic film selection.",
  average_rating: nil,
  image_url: "https://scontent.fcgm1-1.fna.fbcdn.net/v/t39.30808-6/243262403_10165728334210010_8338157497781979992_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=cc71e4&_nc_ohc=j7zdGwCpQpgQ7kNvgEbrvZ-&_nc_zt=23&_nc_ht=scontent.fcgm1-1.fna&_nc_gid=A_4RG8Y6-04rowS9mVOI5TA&oh=00_AYCgjRBuw8yxDpPDNdNzMpL-MID9GB9oMpWZysrrNw311A&oe=671DB076"
)

cinema2 = Cinema.create!(
  name: "Picturehouse Finsbury Park",
  address: "17 City North Place, Finsbury Park, London, N4 3FU",
  description: "A modern cinema with multiple screens, offering a diverse film lineup.",
  average_rating: nil,
  image_url: "https://www.telfordhomes.london/app/uploads/2021/10/vb1895477_City-North-Penthouse-Launch-0B6A3372.jpg"
)

cinema3 = Cinema.create!(
  name: "Picturehouse Fulham Road",
  address: "142 Fulham Road, Kensington and Chelsea, London, SW10 9QR",
  description: "A stylish cinema known for its exclusive screenings and events.",
  average_rating: nil,
  image_url: "https://fastly.4sqi.net/img/general/width960/12689198_w1zRV3m9twuX9INqDJdtETri9y_2EOryAvH2EAgjfZE.jpg"
)

cinema4 = Cinema.create!(
  name: "Picturehouse Hackney",
  address: "270 Mare Street, Hackney, London, E8 1HE",
  description: "A bustling social hub with a lively atmosphere and great film selection.",
  average_rating: nil,
  image_url: "https://www.whitechapelgallery.org/wp-content/uploads/2019/01/Hackney_Picturehouse_962_N53_medium-570x428.jpg"
)

cinema5 = Cinema.create!(
  name: "Picturehouse West Norwood",
  address: "1-7 Norwood High Street, Lambeth, London, SE27 9JU",
  description: "A community-focused cinema offering a unique selection of films.",
  average_rating: nil,
  image_url: "https://lh3.googleusercontent.com/p/AF1QipPAAijm6NHg96HuaymFHvR-zlOY6Sn4XJe-jFBx=s680-w680-h510"
)

cinema6 = Cinema.create!(
  name: "Vue Cinema Stratford",
  address: "London, E20 1EJ",
  description: "A key feature of the Westfield Stratford City complex, providing a range of viewing options.",
  average_rating: nil,
  image_url: "https://www.myvue.com/-/media/vuecinemas/venue-imagery/exteriors/venue-stratford.jpg?rev=acac3c73fdd3452ba69c6c84216b74b1"
)

cinema7 = Cinema.create!(
  name: "Vue Cinema Islington",
  address: "36 Parkfield St, Islington, London, N1 0PS", 
  description: "Situated in the heart of Islington, Vue offers a great cinematic experience with multiple screens.",
  average_rating: nil,
  image_url: "https://www.myvue.com/-/media/vuecinemas/venue-imagery/exteriors/islington-mobile.jpg?rev=2b775505735e45119ec748d0bd6b6b63"
)

cinema8 = Cinema.create!(
  name: "Vue Cinema Westfield White City",
  address: "London, W12 7GF",
  description: "Located in the bustling Westfield shopping center, Vue White City is perfect for a movie day out.",
  average_rating: nil,
  image_url: "https://kidsdayout.info/wp-content/uploads/2022/11/Vue-Cinema-Westfield.jpg"
)

cinema9 = Cinema.create!(
  name: "Vue Cinema Bromley",
  address: "6 St Mark's Square, Bromley, BR2 9UY",
  description: "Modern multiplex offering a variety of films and state-of-the-art audio-visual technology",
  average_rating: nil,
  image_url: "https://kidsdayout.info/wp-content/uploads/2022/11/Vue-Cinema-Bromley-1020x600.jpg"
)

cinema10 = Cinema.create!(
  name: 'Odeon BFI IMAX',
  address: '1 Charlie Chaplin Walk, Lambeth, London, SE1 8XR',
  description: 'The UK\'s largest cinema screen, known for its immersive experience and IMAX films.',
  average_rating: nil,
  image_url: 'https://variety.com/wp-content/uploads/2022/06/BFI-Imax-1.jpeg?w=1000&h=563&crop=1'
)

cinema11 = Cinema.create!(
  name: 'Odeon Greenwich',
  address: 'Commercial Way, Greenwich, London, SE10 0QJ, United Kingdom',
  description: 'A modern cinema with the latest technology, offering a great selection of films.',
  average_rating: nil,
  image_url: 'https://www.allthingsgreenwich.co.uk/images/Odeon_24_600px.jpg'
)

cinema12 = Cinema.create!(
  name: 'Odeon Leicester Square',
  address: '22-24 Leicester Square, Westminster, London, WC2H 7LE',
  description: 'An iconic cinema known for hosting film premieres and events, featuring luxury seating and state-of-the-art technology.',
  average_rating: nil,
  image_url: 'https://kateandsam.co.uk/wp-content/uploads/2020/06/GavriiLux_OdeonLeicesterSquare_20190603_281_HR.jpg'
)

cinema13 = Cinema.create!(
  name: "Everyman Hampstead",
  address: "5 Holly Bush Vale, London, NW3 6TX",
  description: "Situated in a charming area, this cinema features luxurious seating and a relaxed atmosphere.",
  average_rating: nil,
  image_url: "https://fr.web.img1.acsta.net/img/55/c2/55c256f859faa090c6dd2081b1ac86d6.jpg/r_1000_429"
)

cinema14 = Cinema.create!(
  name: "Everyman Islington",
  address: "83 Upper Street, Islington, London, N1 0NU",
  description: "A modern cinema experience in the heart of Islington, known for its comfortable seating.",
  average_rating: nil,
  image_url: "https://cdn.londonandpartners.com/asset/e437c79193d1ff1fbb0cecffb9ff204a.jpg"
)

cinema15 = Cinema.create!(
  name: "Everyman Baker Street",
  address: "96-98 Baker Street, London, N1U 6TJ",
  description: "A stylish cinema featuring a bar and a unique cinema experience in the heart of London.",
  average_rating: nil,
  image_url: "https://lh3.googleusercontent.com/p/AF1QipPF5zqeGh5JdVE1t7VXIKoV5bz0z6-kl-yiGQ2C=s680-w680-h510"
)

cinema16 = Cinema.create!(
  name: "Everyman Crystal Palace",
  address: "25 Church Road, London, SE19 2TE",
  description: "Offering a relaxed atmosphere with plush seating and gourmet food options.",
  average_rating: nil,
  image_url: "https://i2-prod.croydonadvertiser.co.uk/news/croydon-news/article1534743.ece/ALTERNATES/s1200c/cinema04-BAR-2.jpg"
)

cinema17 = Cinema.create!(
  name: "Everyman King's Cross",
  address: "14 Handyside Street, Camden, London, N1C 4DJ",
  description: "A modern cinema experience located near King's Cross with luxury seating and dining options.",
  average_rating: nil,
  image_url: "https://www.tagvenue.com/resize/33/d3/widen-1680-noupsize;17640-everyman-kings-cross-venue.jpg"
)

cinema18 = Cinema.create!(
  name: "Everyman Barnet",
  address: "EN5 1AB, London Borough of Barnet, Greater London",
  description: "Located in a bustling area, providing a comfortable and unique cinema experience.",
  average_rating: nil,
  image_url: "https://live.staticflickr.com/514/32321154155_a6394420bb_b.jpg"
)

cinema19 = Cinema.create!(
  name: "Curzon Bloomsbury",
  address: "London, WC1N 1AW",
  description: "Welcoming cinema with a café and bar.",
  average_rating: nil,
  image_url: "https://live.staticflickr.com/3279/2356188842_ff290a22c7_b.jpg"
)

cinema20 = Cinema.create!(
  name: "Curzon Camden",
  address: "Dockray Place, Camden, London, NW1 8QH",
  description: "A vibrant spot featuring independent films.",
  average_rating: nil,
  image_url: "https://photos.cinematreasures.org/production/photos/363619/1643539642/large.JPG?1643539642"
)

cinema21 = Cinema.create!(
  name: "Curzon Hoxton",
  address: "55 Pitfield Street, London, N1 6BU",
  description: "Quirky venue for film lovers.",
  average_rating: nil,
  image_url:"https://www.tagvenue.com/resize/4c/2d/widen-1680-noupsize;37393-curzon-hoxton-venue.jpg"
)

cinema22 = Cinema.create!(
  name: "Peckhamplex",
  address: "95a Rye Lane, Southwark, London, SE15 4RZ",
  description: "Modern multiplex offering a variety of films and state-of-the-art audio-visual technology",
  average_rating: nil,
  image_url: "https://lh3.googleusercontent.com/p/AF1QipMoYZ7h3rwZe762G7WTazVU4FV0LloNwhAWImJ5=s680-w680-h510"
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
  cinema20, cinema21, cinema22
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


Cinema.find_each do |cinema|
  cinema.update_average_rating
end

puts "Cinema average rating generated"
