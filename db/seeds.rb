# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

Notification.destroy_all
Favourite.destroy_all
Vote.destroy_all
Comment.destroy_all
Review.destroy_all
Cinema.destroy_all
User.destroy_all

cinemas_data = [
  { name: "The Ritzy Picturehouse", address: "Brixton Oval, Lambeth, London, SW2 1EN",
  description: "A vibrant cinema located in the heart of Brixton, known for its eclectic film selection.",
  image_url: "https://ethniclondon.wordpress.com/wp-content/uploads/2013/07/img_20130801_172959_738.jpg?w=1920" },
  { name: "Picturehouse Finsbury Park", address: "17 City North Place, Finsbury Park, London, N4 3FU",
  description: "A modern cinema with multiple screens, offering a diverse film lineup.",
  image_url: "https://images.squarespace-cdn.com/content/v1/61a4ec6a7413220d43d0e98e/1639166924265-CA7QQVR8YRXTX9MQKX5J/DSC07709-2.jpg" },
  { name: "Picturehouse Fulham Road", address: "142 Fulham Road, London, SW10 9QR",
  description: "A stylish cinema known for its exclusive screenings and events.",
  image_url: "https://fastly.4sqi.net/img/general/width960/12689198_w1zRV3m9twuX9INqDJdtETri9y_2EOryAvH2EAgjfZE.jpg" },
  { name: "Picturehouse Hackney", address: "270 Mare Street, Hackney, London, E8 1HE",
  description: "A bustling social hub with a lively atmosphere and great film selection.",
  image_url: "https://www.whitechapelgallery.org/wp-content/uploads/2019/01/Hackney_Picturehouse_962_N53_medium-570x428.jpg" },
  { name: "Picturehouse West Norwood", address: "1-7 Norwood High Street, Lambeth, London, SE27 9JU",
  description: "A community-focused cinema offering a unique selection of films.",
  image_url: "https://lh3.googleusercontent.com/p/AF1QipPAAijm6NHg96HuaymFHvR-zlOY6Sn4XJe-jFBx=s680-w680-h510" },
  {   name: "Vue Cinema Stratford", address: "Hitchcock Lane, Newham, London, E20 1EQ",
  description: "A key feature of the Westfield Stratford City complex, providing a range of viewing options.",
  image_url: "https://www.myvue.com/-/media/vuecinemas/venue-imagery/exteriors/venue-stratford.jpg?rev=acac3c73fdd3452ba69c6c84216b74b1" },
  { name: "Vue Cinema Islington", address: "36 Parkfield St, Islington, London, N1 0PS", 
  description: "Situated in the heart of Islington, Vue offers a great cinematic experience with multiple screens.",
  image_url: "https://www.myvue.com/-/media/vuecinemas/venue-imagery/exteriors/islington-mobile.jpg?rev=2b775505735e45119ec748d0bd6b6b63" },
  { name: "Vue Cinema Westfield White City", address: "London, W12 7GF",
  description: "Located in the bustling Westfield shopping center, Vue White City is perfect for a movie day out.",
  image_url: "https://kidsdayout.info/wp-content/uploads/2022/11/Vue-Cinema-Westfield.jpg" },
  { name: "Vue Cinema Bromley", address: "6 St Mark's Square, Bromley, BR2 9UY",
  description: "Modern multiplex offering a variety of films and state-of-the-art audio-visual technology",
  image_url: "https://kidsdayout.info/wp-content/uploads/2022/11/Vue-Cinema-Bromley-1020x600.jpg" },
  { name: 'Odeon BFI IMAX', address: '1 Charlie Chaplin Walk, Lambeth, London, SE1 8XR',
  description: 'The UK\'s largest cinema screen, known for its immersive experience and IMAX films.',
  image_url: 'https://variety.com/wp-content/uploads/2022/06/BFI-Imax-1.jpeg?w=1000&h=563&crop=1' },
  { name: 'Odeon Greenwich', address: 'Commercial Way, Greenwich, London, SE10 0QJ',
  description: 'A modern cinema with the latest technology, offering a great selection of films.',
  image_url: 'https://www.allthingsgreenwich.co.uk/images/Odeon_24_600px.jpg' },
  { name: 'Odeon Leicester Square', address: '22-24 Leicester Square, Westminster, London, WC2H 7LE',
  description: 'An iconic cinema known for hosting film premieres and events, featuring luxury seating and state-of-the-art technology.',
  image_url: 'https://kateandsam.co.uk/wp-content/uploads/2020/06/GavriiLux_OdeonLeicesterSquare_20190603_281_HR.jpg' },
  { name: "Everyman Hampstead", address: "5 Holly Bush Vale, London, NW3 6TX",
  description: "Situated in a charming area, this cinema features luxurious seating and a relaxed atmosphere.",
  image_url: "https://fr.web.img1.acsta.net/img/55/c2/55c256f859faa090c6dd2081b1ac86d6.jpg/r_1000_429" },
  { name: "Everyman Islington", address: "83 Upper Street, Islington, London, N1 0NU",
  description: "A modern cinema experience in the heart of Islington, known for its comfortable seating.",
  image_url: "https://cdn.londonandpartners.com/asset/e437c79193d1ff1fbb0cecffb9ff204a.jpg" },
  { name: "Everyman Baker Street", address: "96-98 Baker Street, London, W1U 6TJ",
  description: "A stylish cinema featuring a bar and a unique cinema experience in the heart of London.",
  image_url: "https://lh3.googleusercontent.com/p/AF1QipPF5zqeGh5JdVE1t7VXIKoV5bz0z6-kl-yiGQ2C=s680-w680-h510" },
  { name: "Everyman Crystal Palace", address: "25 Church Road, London, SE19 2TE",
  description: "Offering a relaxed atmosphere with plush seating and gourmet food options.",
  image_url: "https://i2-prod.croydonadvertiser.co.uk/news/croydon-news/article1534743.ece/ALTERNATES/s1200c/cinema04-BAR-2.jpg" },
  { name: "Everyman King's Cross", address: "14 Handyside Street, Camden, London, N1C 4DJ",
  description: "A modern cinema experience located near King's Cross with luxury seating and dining options.",
  image_url: "https://www.tagvenue.com/resize/33/d3/widen-1680-noupsize;17640-everyman-kings-cross-venue.jpg" },
  { name: "Everyman Barnet", address: "EN5 1AB, Barnet, Greater London",
  description: "Located in a bustling area, providing a comfortable and unique cinema experience.",
  image_url: "https://live.staticflickr.com/514/32321154155_a6394420bb_b.jpg" },
  { name: "Curzon Bloomsbury", address: "London, WC1N 1AW",
  description: "Welcoming cinema with a café and bar.",
  image_url: "https://live.staticflickr.com/3279/2356188842_ff290a22c7_b.jpg" },
  { name: "Curzon Camden", address: "Dockray Place, Camden, London, NW1 8QH",
  description: "A vibrant spot featuring independent films.",
  image_url: "https://photos.cinematreasures.org/production/photos/363619/1643539642/large.JPG?1643539642" },
  { name: "Curzon Hoxton", address: "55 Pitfield Street, London, N1 6BU",
  description: "Quirky venue for film lovers.",
  image_url:"https://www.tagvenue.com/resize/4c/2d/widen-1680-noupsize;37393-curzon-hoxton-venue.jpg" },
  { name: "Peckhamplex", address: "95a Rye Lane, Southwark, London, SE15 4RZ",
  description: "Modern multiplex offering a variety of films and state-of-the-art audio-visual technology",
  image_url: "https://lh3.googleusercontent.com/p/AF1QipMoYZ7h3rwZe762G7WTazVU4FV0LloNwhAWImJ5=s680-w680-h510" }
]

cinemas = cinemas_data.map do |data|
  Cinema.create!(data.merge(average_rating: nil))
end
puts "Cinema table populated"

users = [
  { email: 'jon@jon.com', password: 'password', username: "just_jon" },
  { email: 'temi@tayo.com', password: 'password', username: "tee" },
  { email: 'harvi@max.com', password: 'password', username: "mr_singh" },
  { email: 'shan@shan.com', password: 'password', username: "bambambaluyos" }
].map { |data| User.create!(data) }
puts "User table populated"

reviews_with_ratings = [
  { content: "An amazing cinema! The staff was friendly and the atmosphere was welcoming.", rating_range: (3.5..5.0) },
  { content: "Great experience overall! The seating was comfortable and the movie selection was excellent.", rating_range: (3.5..5.0) },
  { content: "I loved the sound quality in this cinema. It made the movie feel so immersive!", rating_range: (3.5..5.0) },
  { content: "The snacks were delicious, and the cinema was clean and well-maintained.", rating_range: (3.5..5.0) },
  { content: "Fantastic service! The staff went out of their way to make our visit enjoyable.", rating_range: (3.5..5.0) },
  { content: "I will definitely return! The cinema had a great vibe and fantastic screens.", rating_range: (3.5..5.0) },
  { content: "What a great experience! The layout was perfect, making it easy to find our seats.", rating_range: (3.5..5.0) },
  { content: "The movie selection was impressive, with all the latest releases available.", rating_range: (3.5..5.0) },
  { content: "A clean and friendly environment! I highly recommend this cinema to everyone.", rating_range: (3.5..5.0) },
  { content: "The reclining seats were a game changer for my movie night!", rating_range: (3.5..5.0) },
  { content: "Awesome sound and picture quality! It made the film so much more enjoyable.", rating_range: (3.5..5.0) },
  { content: "The staff was very helpful when we needed assistance. Great customer service!", rating_range: (3.5..5.0) },
  { content: "What a fantastic experience! I felt like I was part of the movie.", rating_range: (3.5..5.0) },
  { content: "The popcorn was fresh and perfectly salted. I could not get enough!", rating_range: (3.5..5.0) },
  { content: "Loved the atmosphere! The lighting and decor were so inviting.", rating_range: (3.5..5.0) },
  { content: "It is my new favorite cinema! I am already planning my next visit.", rating_range: (3.5..5.0) },
  { content: "The location is perfect, making it easy to get to and from the cinema.", rating_range: (3.5..5.0) },
  { content: "Loved the comfortable seating. I was able to enjoy the entire film without discomfort.", rating_range: (3.5..5.0) },
  { content: "The ticket prices were reasonable for such a great experience.", rating_range: (3.5..5.0) },
  { content: "I appreciated the cleanliness of the restrooms and lobby area.", rating_range: (3.5..5.0) },
  { content: "This cinema has become my go-to spot for movie nights with friends.", rating_range: (3.5..5.0) },
  { content: "The pre-show entertainment was enjoyable and made waiting more fun.", rating_range: (3.5..5.0) },
  { content: "I can not wait to come back! The whole experience was delightful.", rating_range: (3.5..5.0) },
  { content: "The 3D experience here is exceptional! Worth every penny.", rating_range: (3.5..5.0) },
  { content: "I enjoyed every moment in this cinema. A wonderful outing!", rating_range: (3.5..5.0) },
  { content: "The seats were uncomfortable, and the movie started late. I won't be returning anytime soon.", rating_range: ( 1.0..3.4 ) },
  { content: "Terrible service! The staff were rude, and the popcorn was stale. Very disappointing experience.", rating_range: ( 1.0..3.4 ) },
  { content: "The cinema was overcrowded and noisy, making it hard to enjoy the film. Not worth the visit.", rating_range: ( 1.0..3.4 ) },
  { content: "Average experience, but the ticket prices are a bit high for the quality.", rating_range: ( 1.0..3.4 ) },
  { content: "The screen quality was subpar, and I couldn't focus on the movie.", rating_range: ( 1.0..3.4 ) },
  { content: "I was unhappy with the cleanliness. The floors were sticky, and it was off-putting.", rating_range: ( 1.0..3.4 ) }
]

cinemas.each do |cinema|
  # Choose a random number of reviews for each cinema (between 2 and 4)
  number_of_reviews = [2, 3, 4].sample

  # Ensure we don't exceed the number of unique users available
  # number_of_reviews = [number_of_reviews, users.size].min

  # Shuffle the users and select a unique subset based on the number of reviews
  selected_users = users.shuffle.first(number_of_reviews)

  # Create reviews for each selected user
  selected_users.each do |user|
    review = reviews_with_ratings.sample
    content = review[:content]
    rating = rand(review[:rating_range]).round(1)

    Review.create!(
      screen: rand(1..5),
      seat: "#{('A'..'H').to_a.sample}#{rand(1..20)}",
      pref_seat: "#{('A'..'H').to_a.sample}#{rand(1..20)}",
      content: content,
      rating: rating,
      cinema_id: cinema.id,
      user_id: user.id
    )
  end
end
puts "Review table populated"

# Update average ratings for cinemas
Cinema.find_each do |cinema|
  cinema.update_average_rating
end
puts "Cinema average rating generated"
