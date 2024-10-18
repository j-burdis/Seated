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
  name: "The Cameo Picturehouse",
  address: "38 Home St, Edinburgh, EH3 9LZ",
  description: "A historical cinema offering a mix of mainstream and independent films.",
  average_rating: 4.6,
  image_url: "https://www.accesscard.online/asset/image/provider/clapham-picturehouse.jpg"
)

cinema3 = Cinema.create!(
  name: "Picturehouse City Screen",
  address: "Coney Street, York, YO1 9QL",
  description: "A riverside cinema featuring a mix of films, from blockbusters to indie gems.",
  average_rating: 4.7,
  image_url: "https://www.accesscard.online/asset/image/provider/clapham-picturehouse.jpg"
)

cinema4 = Cinema.create!(
  name: "Picturehouse Exeter",
  address: "Gandy St, Exeter, EX4 3LS",
  description: "A charming cinema with a focus on independent and art films.",
  average_rating: 4.5,
  image_url: "https://www.accesscard.online/asset/image/provider/clapham-picturehouse.jpg"
)

cinema5 = Cinema.create!(
  name: "Picturehouse Finsbury Park",
  address: "180 St John's Rd, London, N19 5QJ",
  description: "A modern cinema with multiple screens, offering a diverse film lineup.",
  average_rating: 4.4,
  image_url: "https://www.accesscard.online/asset/image/provider/clapham-picturehouse.jpg"
)

cinema6 = Cinema.create!(
  name: "Picturehouse Fulham Road",
  address: "205 Fulham Rd, London, SW3 6HJ",
  description: "A stylish cinema known for its exclusive screenings and events.",
  average_rating: 4.3,
  image_url: "https://www.accesscard.online/asset/image/provider/clapham-picturehouse.jpg"
)

cinema7 = Cinema.create!(
  name: "Picturehouse Hackney",
  address: "270 Mare St, London, E8 1HE",
  description: "A bustling social hub with a lively atmosphere and great film selection.",
  average_rating: 4.5,
  image_url: "https://www.accesscard.online/asset/image/provider/clapham-picturehouse.jpg"
)

cinema9 = Cinema.create!(
  name: "Picturehouse Stratford",
  address: "Theatre Square, London, E15 1BX",
  description: "A cinema located near the Olympic Park, showcasing a variety of films.",
  average_rating: 4.5,
  image_url: "https://www.accesscard.online/asset/image/provider/clapham-picturehouse.jpg"
)

cinema10 = Cinema.create!(
  name: "The Regal Picturehouse",
  address: "27-29 Clements Rd, Oxford, OX4 1PJ",
  description: "A vintage cinema offering a charming atmosphere and a diverse film selection.",
  average_rating: 4.4,
  image_url: "https://www.accesscard.online/asset/image/provider/clapham-picturehouse.jpg"
)

cinema11 = Cinema.create!(
  name: "The Ritzy Picturehouse ",
  address: "160 Brixton Rd, London, SW9 8HA",
  description: "One of the oldest cinemas in London, known for its vibrant community events.",
  average_rating: 4.7,
  image_url: "https://www.accesscard.online/asset/image/provider/clapham-picturehouse.jpg"
)

cinema12 = Cinema.create!(
  name: "Picturehouse Tyneside",
  address: "10-12 Pilgrim St, Newcastle upon Tyne, NE1 6SQ",
  description: "A cinema that is part of a cultural complex, showcasing a range of films.",
  average_rating: 4.6,
  image_url: "https://www.accesscard.online/asset/image/provider/clapham-picturehouse.jpg"
)

cinema13 = Cinema.create!(
  name: "Picturehouse West Norwood",
  address: "449A Norwood Rd, London, SE27 9DQ",
  description: "A community-focused cinema offering a unique selection of films.",
  average_rating: 4.3,
  image_url: "https://www.accesscard.online/asset/image/provider/clapham-picturehouse.jpg"
)

cinema14 = Cinema.create!(
  name: "Picturehouse York",
  address: "Coney St, York, YO1 9QL",
  description: "A cultural hub in York, offering a blend of mainstream and independent films.",
  average_rating: 4.5,
  image_url: "https://www.accesscard.online/asset/image/provider/clapham-picturehouse.jpg"
)

cinema15 = Cinema.create!(
  name: "Picturehouse Cinema City",
  address: "St Andrews St, Norwich, NR2 4AD",
  description: "A historic cinema located in the city center, showcasing a variety of films.",
  average_rating: 4.4,
  image_url: "https://www.accesscard.online/asset/image/provider/clapham-picturehouse.jpg"
)

cinema16 = Cinema.create!(
  name: "Picturehouse Harbour Lights",
  address: "12-14 Ocean Village, Southampton, SO14 3TL",
  description: "A scenic cinema located by the waterfront, known for its community events.",
  average_rating: 4.6,
  image_url: "https://www.accesscard.online/asset/image/provider/clapham-picturehouse.jpg"
)

cinema17 = Cinema.create!(
  name: "Phoenix Picturehouse",
  address: "57 Walton St, Oxford, OX2 6AE",
  description: "Known for its eclectic programming of art-house films.",
  average_rating: 4.7,
  image_url: "https://www.accesscard.online/asset/image/provider/clapham-picturehouse.jpg"
)

cinema26 = Cinema.create!(
  name: "Vue Cinema Bournemouth",
  address: "19-21 Commercial Road, Bournemouth, BH2 5RH",
  description: "A modern cinema offering various films and comfortable seating.",
  average_rating: 4.5,
  image_url: "https://www.gateway978.com/wordpress/wp-content/uploads/2024/07/vue-web.jpg"
)

cinema27 = Cinema.create!(
  name: "Vue Cinema Cardiff",
  address: "1-3, 4-6, 7-8 St. David's Way, Cardiff, CF10 2EL",
  description: "Known for its excellent screen quality and sound system.",
  average_rating: 4.2,
  image_url: "https://www.gateway978.com/wordpress/wp-content/uploads/2024/07/vue-web.jpg"
)

cinema28 = Cinema.create!(
  name: "Vue Cinema Cheshire Oaks",
  address: "Coliseum Leisure Park, Ellesmere Port, CH65 9HD",
  description: "Offers a range of viewing experiences, including IMAX screenings.",
  average_rating: 4.0,
  image_url: "https://www.gateway978.com/wordpress/wp-content/uploads/2024/07/vue-web.jpg"
)

cinema29 = Cinema.create!(
  name: "Vue Cinema Edinburgh Omni Centre",
  address: "9 Greenside Place, Edinburgh, EH1 3AA",
  description: "A vibrant location close to the city center with a wide selection of films.",
  average_rating: 4.4,
  image_url: "https://www.gateway978.com/wordpress/wp-content/uploads/2024/07/vue-web.jpg"
)

cinema30 = Cinema.create!(
  name: "Vue Cinema Gateshead",
  address: "MetroCentre, Gateshead, NE11 9YG",
  description: "A popular cinema with modern amenities and a variety of films.",
  average_rating: 4.3,
  image_url: "https://www.gateway978.com/wordpress/wp-content/uploads/2024/07/vue-web.jpg"
)

cinema31 = Cinema.create!(
  name: "Vue Cinema Glasgow",
  address: "Landsdowne House, 16-19, 16-19 Sauchiehall St, Glasgow, G2 3ER",
  description: "Offers a diverse film selection in a central location.",
  average_rating: 4.5,
  image_url: "https://www.gateway978.com/wordpress/wp-content/uploads/2024/07/vue-web.jpg"
)

cinema32 = Cinema.create!(
  name: "Vue Cinema Leeds",
  address: "The Light, The Headrow, Leeds, LS1 8TL",
  description: "A vibrant cinema situated in a popular entertainment complex.",
  average_rating: 4.4,
  image_url: "https://www.gateway978.com/wordpress/wp-content/uploads/2024/07/vue-web.jpg"
)

cinema33 = Cinema.create!(
  name: "Vue Cinema Liverpool",
  address: "Unit 3, 1-3, 1-3 Queens Square, Liverpool, L1 1RH",
  description: "Located in the heart of Liverpool, offering a variety of films.",
  average_rating: 4.3,
  image_url: "https://www.gateway978.com/wordpress/wp-content/uploads/2024/07/vue-web.jpg"
)

cinema34 = Cinema.create!(
  name: "Vue Cinema Manchester",
  address: "Lower Ground Floor, The Printworks, 27 Withy Grove, Manchester, M4 2BS",
  description: "A modern cinema with advanced viewing technology.",
  average_rating: 4.6,
  image_url: "https://www.gateway978.com/wordpress/wp-content/uploads/2024/07/vue-web.jpg"
)

cinema35 = Cinema.create!(
  name: "Vue Cinema Milton Keynes",
  address: "Midsummer Boulevard, Milton Keynes, MK9 3GB",
  description: "Known for its family-friendly environment and various film choices.",
  average_rating: 4.3,
  image_url: "https://www.gateway978.com/wordpress/wp-content/uploads/2024/07/vue-web.jpg"
)

cinema37 = Cinema.create!(
  name: "Vue Cinema Newcastle",
  address: "The Gate, 9-10 Newgate St, Newcastle upon Tyne, NE1 5TG",
  description: "Located in the vibrant city center, Vue Newcastle offers a great range of films and comfortable viewing.",
  average_rating: 4.5,
  image_url: "https://www.gateway978.com/wordpress/wp-content/uploads/2024/07/vue-web.jpg"
)

cinema38 = Cinema.create!(
  name: "Vue Cinema Reading",
  address: "The Oracle, Reading, RG1 2AG",
  description: "A modern cinema situated in The Oracle shopping center, offering a diverse film selection.",
  average_rating: 4.3,
  image_url: "https://www.gateway978.com/wordpress/wp-content/uploads/2024/07/vue-web.jpg"
)

cinema39 = Cinema.create!(
  name: "Vue Cinema Sheffield",
  address: "Valley Centertainment, 18, 20 Broughton Lane, Sheffield, S9 2EP",
  description: "Enjoy a great cinematic experience in the heart of Sheffield's entertainment district.",
  average_rating: 4.4,
  image_url: "https://www.gateway978.com/wordpress/wp-content/uploads/2024/07/vue-web.jpg"
)

cinema40 = Cinema.create!(
  name: "Vue Cinema Stratford",
  address: "The Theatre, Westfield Stratford City, 1A Montfichet Rd, London, E20 1EJ",
  description: "A key feature of the Westfield Stratford City complex, providing a range of viewing options.",
  average_rating: 4.6,
  image_url: "https://www.gateway978.com/wordpress/wp-content/uploads/2024/07/vue-web.jpg"
)

cinema41 = Cinema.create!(
  name: "Vue Cinema Walthamstow",
  address: "The Mall, 4, 5, 6, 7 Selborne Walk, Walthamstow, London, E17 7JH",
  description: "Situated in the heart of Walthamstow, Vue offers a great cinematic experience with multiple screens.",
  average_rating: 4.4,
  image_url: "https://www.gateway978.com/wordpress/wp-content/uploads/2024/07/vue-web.jpg"
)

cinema42 = Cinema.create!(
  name: "Vue Cinema Westfield White City",
  address: "Westfield London, Ariel Way, White City, London, W12 7GF",
  description: "Located in the bustling Westfield shopping center, Vue White City is perfect for a movie day out.",
  average_rating: 4.5,
  image_url: "https://www.gateway978.com/wordpress/wp-content/uploads/2024/07/vue-web.jpg"
)

cinema43 = Cinema.create!(
  name: "Vue Cinema Westwood Cross",
  address: "Westwood Cross, Broadstairs Road, Kent, CT10 2BF",
  description: "This cinema offers a variety of films in a comfortable environment, with ample parking nearby.",
  average_rating: 4.3,
  image_url: "https://www.gateway978.com/wordpress/wp-content/uploads/2024/07/vue-web.jpg"
)

cinema44 = Cinema.create!(
  name: "Vue Cinema York",
  address: "Foss Islands Road, York, YO31 7UL",
  description: "Vue York is located close to the city center, offering an excellent choice of films.",
  average_rating: 4.6,
  image_url: "https://www.gateway978.com/wordpress/wp-content/uploads/2024/07/vue-web.jpg"
)

cinema45 = Cinema.create!(
  name: "Vue Cinema Basingstoke",
  address: "Festival Place, Basingstoke, RG21 7LJ",
  description: "Located in the shopping center, Vue Basingstoke is an ideal spot for movie lovers.",
  average_rating: 4.4,
  image_url: "https://www.gateway978.com/wordpress/wp-content/uploads/2024/07/vue-web.jpg"
)

cinema46 = Cinema.create!(
  name: "Vue Cinema Blackburn",
  address: "The Mall Blackburn, 1-3 Darwen St, Blackburn, BB2 2DT",
  description: "Vue Blackburn offers a comfortable setting to enjoy the latest films.",
  average_rating: 4.2,
  image_url: "https://www.gateway978.com/wordpress/wp-content/uploads/2024/07/vue-web.jpg"
)

cinema47 = Cinema.create!(
  name: 'Odeon Leicester Square',
  address: '24-26 Leicester Square, London, WC2H 7JY',
  description: 'An iconic cinema known for hosting film premieres and events, featuring luxury seating and state-of-the-art technology.',
  average_rating: nil,
  image_url: 'https://www.opia.com/wp-content/uploads/2022/10/Odeon.png'
)

cinema48 = Cinema.create!(
  name: 'Odeon BFI IMAX',
  address: '1 Charlie Chaplin Walk, London, SE1 8XR',
  description: 'The UK\'s largest cinema screen, known for its immersive experience and IMAX films.',
  average_rating: nil,
  image_url: 'https://www.opia.com/wp-content/uploads/2022/10/Odeon.png'
)

cinema49 = Cinema.create!(
  name: 'Odeon Kingston',
  address: 'The Rotunda, Clarence St, Kingston upon Thames, KT1 1QJ',
  description: 'Located in the heart of Kingston, this cinema offers a variety of films with comfortable seating.',
  average_rating: nil,
  image_url: 'https://www.opia.com/wp-content/uploads/2022/10/Odeon.png'
)

cinema50 = Cinema.create!(
  name: 'Odeon Manchester',
  address: 'The Printworks, 27 Withy Grove, Manchester, M4 2BS',
  description: 'A vibrant cinema situated in The Printworks, featuring the latest releases and luxury seating.',
  average_rating: nil,
  image_url: 'https://www.opia.com/wp-content/uploads/2022/10/Odeon.png'
)

cinema51 = Cinema.create!(
  name: 'Odeon Liverpool',
  address: 'Unit 3, Liverpool One, 14-16, Wall Street, Liverpool, L1 8JQ',
  description: 'A modern cinema in the heart of Liverpool offering the latest films and an enjoyable experience.',
  average_rating: nil,
  image_url: 'https://www.opia.com/wp-content/uploads/2022/10/Odeon.png'
)

cinema52 = Cinema.create!(
  name: 'Odeon Birmingham',
  address: '5-6, The Arcadian, Hurst St, Birmingham, B5 4TD',
  description: 'A central location for film lovers in Birmingham, known for its comfortable seating and variety of films.',
  average_rating: nil,
  image_url: 'https://www.opia.com/wp-content/uploads/2022/10/Odeon.png'
)

cinema53 = Cinema.create!(
  name: 'Odeon Leeds-Bradford',
  address: 'Cineworld, Thornbury, Bradford, BD3 8HX',
  description: 'A popular cinema destination for those in the Leeds and Bradford area, featuring a range of films.',
  average_rating: nil,
  image_url: 'https://www.opia.com/wp-content/uploads/2022/10/Odeon.png'
)

cinema55 = Cinema.create!(
  name: 'Odeon Greenwich',
  address: 'Duncan Rd, Greenwich, London, SE10 9SW',
  description: 'A modern cinema with the latest technology, offering a great selection of films.',
  average_rating: nil,
  image_url: 'https://www.opia.com/wp-content/uploads/2022/10/Odeon.png'
)

cinema56 = Cinema.create!(
  name: 'Odeon Southend',
  address: '17-19, The Victoria Shopping Centre, Southend-on-Sea, SS2 5SP',
  description: 'A popular spot for moviegoers in Southend, featuring a wide selection of films and comfortable seating.',
  average_rating: nil,
  image_url: 'https://www.opia.com/wp-content/uploads/2022/10/Odeon.png'
)

cinema57 = Cinema.create!(
  name: 'Odeon St Albans',
  address: 'St. Albans City Centre, 9 St. Peters St, St Albans, AL1 3DH',
  description: 'Conveniently located in St. Albans, this cinema offers a range of films in a comfortable setting.',
  average_rating: nil,
  image_url: 'https://www.opia.com/wp-content/uploads/2022/10/Odeon.png'
)

cinema58 = Cinema.create!(
  name: 'Odeon Chatham',
  address: '1-3, Chatham Maritime, Chatham, ME4 4LL',
  description: 'This cinema provides a great experience with the latest releases and comfortable seating.',
  average_rating: nil,
  image_url: 'https://www.opia.com/wp-content/uploads/2022/10/Odeon.png'
)

cinema60 = Cinema.create!(
  name: 'Odeon Swindon',
  address: '1-2, Theatre Square, Swindon, SN1 1QN',
  description: 'A cinema that caters to all film lovers, offering a variety of films in a modern setting.',
  average_rating: nil,
  image_url: 'https://www.opia.com/wp-content/uploads/2022/10/Odeon.png'
)

cinema62 = Cinema.create!(
  name: "ODEON Cardiff",
  address: "Hemingway Road, Cardiff, CF10 1FG",
  description: "A modern cinema with all the latest films and an extensive snack bar.",
  average_rating: 4.4,
  image_url: 'https://www.opia.com/wp-content/uploads/2022/10/Odeon.png'
)

cinema63 = Cinema.create!(
  name: "ODEON Derby",
  address: "London Road, Derby, DE24 8UQ",
  description: "State-of-the-art screens and a variety of food options available.",
  average_rating: 4.3,
  image_url: 'https://www.opia.com/wp-content/uploads/2022/10/Odeon.png'
)

cinema64 = Cinema.create!(
  name: "ODEON Edinburgh",
  address: "Lothian Road, Edinburgh, EH3 9WJ",
  description: "Located in the vibrant city center, featuring the latest films and comfortable seating.",
  average_rating: 4.5,
  image_url: 'https://www.opia.com/wp-content/uploads/2022/10/Odeon.png'
)

cinema65 = Cinema.create!(
  name: "ODEON Kingston",
  address: "High Street, Kingston upon Thames, KT1 1EE",
  description: "A convenient location with a variety of films and a comfortable environment.",
  average_rating: 4.4,
  image_url: 'https://www.opia.com/wp-content/uploads/2022/10/Odeon.png'
)

cinema66 = Cinema.create!(
  name: "ODEON Liverpool ONE",
  address: "5, 7, 9, 11, 13, 15, 17, 19 and 21, South John Street, Liverpool, L1 8JQ",
  description: "The ultimate cinematic experience in the heart of Liverpool with multiple screens.",
  average_rating: 4.6,
  image_url: 'https://www.opia.com/wp-content/uploads/2022/10/Odeon.png'
)

cinema67 = Cinema.create!(
  name: "ODEON Manchester",
  address: "Deansgate, Manchester, M3 4LQ",
  description: "A central location featuring the latest films and luxury seating.",
  average_rating: 4.5,
  image_url: 'https://www.opia.com/wp-content/uploads/2022/10/Odeon.png'
)

cinema68 = Cinema.create!(
  name: "ODEON Milton Keynes",
  address: "Midsummer Blvd, Milton Keynes, MK9 3GB",
  description: "Featuring a wide selection of films and modern amenities.",
  average_rating: 4.4,
  image_url: 'https://www.opia.com/wp-content/uploads/2022/10/Odeon.png'
)

cinema69 = Cinema.create!(
  name: "ODEON Nottingham",
  address: "3, 5, 7, 9, 11, 13, 15, 17 and 19, Upper Parliament Street, Nottingham, NG1 2AN",
  description: "An iconic cinema with the latest technology and a wide variety of films.",
  average_rating: 4.5,
  image_url: 'https://www.opia.com/wp-content/uploads/2022/10/Odeon.png'
)

cinema70 = Cinema.create!(
  name: "ODEON Sheffield",
  address: "Barker's Pool, Sheffield, S1 2JA",
  description: "Located in the city center with a great selection of films and comfortable seating.",
  average_rating: 4.3,
  image_url: 'https://www.opia.com/wp-content/uploads/2022/10/Odeon.png'
)

cinema71 = Cinema.create!(
  name: "ODEON Bournemouth",
  address: "Sovereign Centre, Boscombe, Bournemouth, BH5 1AA",
  description: "Located in the heart of Boscombe, featuring comfortable seating and a variety of films.",
  average_rating: 4.5,
  image_url: 'https://www.opia.com/wp-content/uploads/2022/10/Odeon.png'
)

cinema72 = Cinema.create!(
  name: "Everyman Cheltenham",
  address: "Regent Arcade Regent Street, Cheltenham, GL50 1EU",
  description: "Tivoli Cheltenham has now joined the Everyman family, offering a new food and drink menu and Everyman hospitality.",
  average_rating: nil,
  image_url: "https://i.ytimg.com/vi/1ml4hLVjAw4/maxresdefault.jpg"
)

cinema73 = Cinema.create!(
  name: "Everyman Winchester",
  address: "Southgate Street, Winchester, SO23 9EG",
  description: "A Grade II listed chapel converted into a stylish cinema, featuring two screens and a cosy bar.",
  average_rating: nil,
  image_url: "https://i.ytimg.com/vi/1ml4hLVjAw4/maxresdefault.jpg"
)

cinema74 = Cinema.create!(
  name: "Everyman Leeds",
  address: "The Light, The Headrow, Leeds, LS1 8TL",
  description: "Located in a vibrant area, offering a unique cinema experience with a bar and restaurant.",
  average_rating: nil,
  image_url: "https://i.ytimg.com/vi/1ml4hLVjAw4/maxresdefault.jpg"
)

cinema75 = Cinema.create!(
  name: "Everyman Hampstead",
  address: "163 Haverstock Hill, Hampstead, London, NW3 4RP",
  description: "Situated in a charming area, this cinema features luxurious seating and a relaxed atmosphere.",
  average_rating: nil,
  image_url: "https://i.ytimg.com/vi/1ml4hLVjAw4/maxresdefault.jpg"
)

cinema76 = Cinema.create!(
  name: "Everyman Islington",
  address: "Screen on the Green, 83 Upper Street, Islington, London, N1 0NP",
  description: "A modern cinema experience in the heart of Islington, known for its comfortable seating.",
  average_rating: nil,
  image_url: "https://i.ytimg.com/vi/1ml4hLVjAw4/maxresdefault.jpg"
)

cinema77 = Cinema.create!(
  name: "Everyman Baker Street",
  address: "96 Baker Street, London, NW1 6XL",
  description: "A stylish cinema featuring a bar and a unique cinema experience in the heart of London.",
  average_rating: nil,
  image_url: "https://i.ytimg.com/vi/1ml4hLVjAw4/maxresdefault.jpg"
)

cinema78 = Cinema.create!(
  name: "Everyman Crystal Palace",
  address: "25 Church Road, Crystal Palace, London, SE19 2TF",
  description: "Offering a relaxed atmosphere with plush seating and gourmet food options.",
  average_rating: nil,
  image_url: "https://i.ytimg.com/vi/1ml4hLVjAw4/maxresdefault.jpg"
)

cinema79 = Cinema.create!(
  name: "Everyman King's Cross",
  address: "The Regent, 32-34 King's Boulevard, London, N1C 4AX",
  description: "A modern cinema experience located near King's Cross with luxury seating and dining options.",
  average_rating: nil,
  image_url: "https://i.ytimg.com/vi/1ml4hLVjAw4/maxresdefault.jpg"
)

cinema80 = Cinema.create!(
  name: "Everyman Manchester",
  address: "House 4, 20-24 Deansgate, Manchester, M3 3WR",
  description: "Combining a love for film and food, this cinema offers a unique dining experience.",
  average_rating: nil,
  image_url: "https://i.ytimg.com/vi/1ml4hLVjAw4/maxresdefault.jpg"
)

cinema81 = Cinema.create!(
  name: "Everyman Liverpool",
  address: "Woolton Cinema, 47-49 Allerton Road, Liverpool, L18 1LN",
  description: "A charming cinema with a history, offering a unique and stylish experience.",
  average_rating: nil,
  image_url: "https://i.ytimg.com/vi/1ml4hLVjAw4/maxresdefault.jpg"
)

cinema82 = Cinema.create!(
  name: "Everyman Barnet",
  address: "Barnet, London, EN5 5TW",
  description: "Located in a bustling area, providing a comfortable and unique cinema experience.",
  average_rating: nil,
  image_url: "https://i.ytimg.com/vi/1ml4hLVjAw4/maxresdefault.jpg"
)

cinema83 = Cinema.create!(
  name: "Everyman Basingstoke",
  address: "Festival Place, Basingstoke, RG21 7BF",
  description: "A modern cinema that offers a luxurious viewing experience and a great selection of food.",
  average_rating: nil,
  image_url: "https://i.ytimg.com/vi/1ml4hLVjAw4/maxresdefault.jpg"
)

cinema84 = Cinema.create!(
  name: "Everyman Stratford",
  address: "The Broadway, Stratford, London, E15 4BQ",
  description: "Featuring a range of films in a stylish environment, offering an enhanced cinema experience.",
  average_rating: nil,
  image_url: "https://i.ytimg.com/vi/1ml4hLVjAw4/maxresdefault.jpg"
)

cinema85 = Cinema.create!(
  name: "Showcase Cinema de Lux Nottingham",
  address: "Redfield Way, Lenton, Nottingham, England NG7 2UW",
  description: "Experience movies in luxury at Showcase Cinema de Lux Nottingham with cutting-edge technology.",
  average_rating: 4.5,
  image_url: "https://images.vouchercloud.com/image/upload/f_auto,fl_strip_profile,w_628,c_crop/w_620,h_378,c_fill/showcase_cinema_de_lux_premiumofferimage_1.jpg"
)

cinema86 = Cinema.create!(
  name: "Showcase Cinema de Lux Leicester",
  address: "7 Highcross Lane, Leicester, England LE1 4SD",
  description: "Showcase Cinema de Lux Leicester offers an exceptional movie-going experience.",
  average_rating: 4.2,
  image_url: "https://images.vouchercloud.com/image/upload/f_auto,fl_strip_profile,w_628,c_crop/w_620,h_378,c_fill/showcase_cinema_de_lux_premiumofferimage_1.jpg"
)

cinema87 = Cinema.create!(
  name: "Showcase Cinema de Lux Reading",
  address: "Loddon Bridge, Reading Road, Winnersh, Wokingham, England RG41 5HG",
  description: "Enjoy the latest films in a luxurious environment at Showcase Cinema de Lux Reading.",
  average_rating: 4.3,
  image_url: "https://images.vouchercloud.com/image/upload/f_auto,fl_strip_profile,w_628,c_crop/w_620,h_378,c_fill/showcase_cinema_de_lux_premiumofferimage_1.jpg"
)

cinema88 = Cinema.create!(
  name: "Showcase Cinema de Lux Bristol",
  address: "Bristol City Centre, Cabot Circus, Bristol, England BS1 3BX",
  description: "Experience the latest films at Showcase Cinema de Lux in the heart of Bristol.",
  average_rating: 4.4,
  image_url: "https://images.vouchercloud.com/image/upload/f_auto,fl_strip_profile,w_628,c_crop/w_620,h_378,c_fill/showcase_cinema_de_lux_premiumofferimage_1.jpg"
)

cinema89 = Cinema.create!(
  name: "Showcase Cinema de Lux Newcastle",
  address: "Intu Eldon Square, Newcastle, England NE1 7XG",
  description: "Showcase Cinema de Lux Newcastle offers the ultimate luxury cinema experience.",
  average_rating: 4.6,
  image_url: "https://images.vouchercloud.com/image/upload/f_auto,fl_strip_profile,w_628,c_crop/w_620,h_378,c_fill/showcase_cinema_de_lux_premiumofferimage_1.jpg"
)

cinema90 = Cinema.create!(
  name: "Showcase Cinema de Lux Coventry",
  address: "Arena Park Shopping Centre, Coventry, England CV6 6AS",
  description: "Watch the latest movies at Showcase Cinema de Lux Coventry in a relaxed setting.",
  average_rating: 4.1,
  image_url: "https://images.vouchercloud.com/image/upload/f_auto,fl_strip_profile,w_628,c_crop/w_620,h_378,c_fill/showcase_cinema_de_lux_premiumofferimage_1.jpg"
)

cinema91 = Cinema.create!(
  name: "Showcase Cinema de Lux Dudley",
  address: "Brierley Hill, Dudley, England DY5 1SR",
  description: "Enjoy a unique cinema experience at Showcase Cinema de Lux Dudley.",
  average_rating: 4.0,
  image_url: "https://images.vouchercloud.com/image/upload/f_auto,fl_strip_profile,w_628,c_crop/w_620,h_378,c_fill/showcase_cinema_de_lux_premiumofferimage_1.jpg"
)

cinema92 = Cinema.create!(
  name: "Showcase Cinema de Lux Walsall",
  address: "Crown Wharf Retail Park, Walsall, England WS1 4SY",
  description: "Showcase Cinema de Lux Walsall combines comfort and cutting-edge cinema technology.",
  average_rating: 4.3,
  image_url: "https://images.vouchercloud.com/image/upload/f_auto,fl_strip_profile,w_628,c_crop/w_620,h_378,c_fill/showcase_cinema_de_lux_premiumofferimage_1.jpg"
)

cinema93 = Cinema.create!(
  name: "Showcase Cinema de Lux Manchester",
  address: "The Printworks, Manchester, England M4 2BS",
  description: "Experience luxury viewing at Showcase Cinema de Lux Manchester.",
  average_rating: 4.5,
  image_url: "https://images.vouchercloud.com/image/upload/f_auto,fl_strip_profile,w_628,c_crop/w_620,h_378,c_fill/showcase_cinema_de_lux_premiumofferimage_1.jpg"
)

cinema94 = Cinema.create!(
  name: "Showcase Cinema de Lux Glasgow",
  address: "The Forge Shopping Centre, Glasgow, Scotland G31 4EB",
  description: "Showcase Cinema de Lux Glasgow offers a premium film experience in a vibrant location.",
  average_rating: 4.2,
  image_url: "https://images.vouchercloud.com/image/upload/f_auto,fl_strip_profile,w_628,c_crop/w_620,h_378,c_fill/showcase_cinema_de_lux_premiumofferimage_1.jpg"
)

cinema95 = Cinema.create!(
  name: 'Curzon Bloomsbury',
  address: 'The Brunswick Centre, London, WC1N 1AW',
  description: 'Welcoming cinema with a café and bar.',
  average_rating: 4.5,
  image_url: 'https://static.standard.co.uk/2022/11/30/11/newFile-13.jpg?width=1200&auto=webp&quality=75'
)

cinema96 = Cinema.create!(
  name: 'Curzon Camden',
  address: '96-98 Camden High St, London, NW1 0LT',
  description: 'A vibrant spot featuring independent films.',
  average_rating: 4.6,
  image_url: 'https://static.standard.co.uk/2022/11/30/11/newFile-13.jpg?width=1200&auto=webp&quality=75'
)

cinema97 = Cinema.create!(
  name: 'Curzon Canterbury',
  address: 'Riverside, Canterbury, CT1 1XJ',
  description: 'Located by the river, showcasing the best films.',
  average_rating: 4.7,
  image_url: 'https://static.standard.co.uk/2022/11/30/11/newFile-13.jpg?width=1200&auto=webp&quality=75'
)

cinema98 = Cinema.create!(
  name: 'Curzon Colchester',
  address: 'Colchester, CO1 1YH',
  description: 'Independent cinema with a unique charm.',
  average_rating: 4.5,
  image_url: 'https://static.standard.co.uk/2022/11/30/11/newFile-13.jpg?width=1200&auto=webp&quality=75'
)

cinema99 = Cinema.create!(
  name: 'Curzon Hoxton',
  address: '106-108 Hoxton St, London, N1 6LP',
  description: 'Quirky venue for film lovers.',
  average_rating: 4.8,
  image_url: 'https://static.standard.co.uk/2022/11/30/11/newFile-13.jpg?width=1200&auto=webp&quality=75'
)

cinema100 = Cinema.create!(
  name: 'Curzon Kingston',
  address: 'The Rotunda, Kingston upon Thames, KT1 1QJ',
  description: 'Cinema with great local eateries nearby.',
  average_rating: 4.4,
  image_url: 'https://static.standard.co.uk/2022/11/30/11/newFile-13.jpg?width=1200&auto=webp&quality=75'
)

cinema101 = Cinema.create!(
  name: 'Curzon Mayfair',
  address: '38 Curzon St, Mayfair, London, W1J 7TX',
  description: 'Historic cinema known for its luxurious screenings.',
  average_rating: 4.6,
  image_url: 'https://static.standard.co.uk/2022/11/30/11/newFile-13.jpg?width=1200&auto=webp&quality=75'
)

cinema102 = Cinema.create!(
  name: 'Curzon Oxford',
  address: 'The Old Fire Station, 40 George St, Oxford, OX1 2AQ',
  description: 'Independent cinema with a vibrant atmosphere.',
  average_rating: 4.7,
  image_url: 'https://static.standard.co.uk/2022/11/30/11/newFile-13.jpg?width=1200&auto=webp&quality=75'
)

cinema103 = Cinema.create!(
  name: 'Curzon Richmond',
  address: '3 Water Ln, Richmond, TW9 1TJ',
  description: 'Charming cinema with local dining options.',
  average_rating: 4.5,
  image_url: 'https://static.standard.co.uk/2022/11/30/11/newFile-13.jpg?width=1200&auto=webp&quality=75'
)

cinema104 = Cinema.create!(
  name: 'Curzon Sheffield',
  address: 'The Moor, Sheffield, S1 4PF',
  description: 'A hub for film enthusiasts in Sheffield.',
  average_rating: 4.6,
  image_url: 'https://static.standard.co.uk/2022/11/30/11/newFile-13.jpg?width=1200&auto=webp&quality=75'
)

cinema105 = Cinema.create!(
  name: 'Curzon Soho',
  address: '38 Shaftesbury Ave, Soho, London, W1D 7ER',
  description: 'In the heart of Soho, perfect for indie films.',
  average_rating: 4.6,
  image_url: 'https://static.standard.co.uk/2022/11/30/11/newFile-13.jpg?width=1200&auto=webp&quality=75'
)

cinema106 = Cinema.create!(
  name: 'Curzon Victoria',
  address: '58 Victoria St, Westminster, London, SW1E 6QZ',
  description: 'Stylish venue with a premium feel.',
  average_rating: 4.5,
  image_url: 'https://static.standard.co.uk/2022/11/30/11/newFile-13.jpg?width=1200&auto=webp&quality=75'
)

cinema107 = Cinema.create!(
  name: 'Curzon Wimbledon',
  address: '5 The Broadway, Wimbledon, London, SW19 1RQ',
  description: 'Local cinema with a welcoming atmosphere.',
  average_rating: 4.4,
  image_url: 'https://static.standard.co.uk/2022/11/30/11/newFile-13.jpg?width=1200&auto=webp&quality=75'
)

puts "Cinema table populated"

jon = User.create!(email: 'jon@jon.com', password: 'password', username: "just_jon")
temi = User.create!(email: 'temi@tayo.com', password: 'password', username: "tee")
harvi = User.create!(email: 'harvi@max.com', password: 'password', username: "mr_singh")
shan = User.create!(email: 'shan@shan.com', password: 'password', username: "bambambaluyos")

users = [jon, temi, harvi, shan]

puts "User table populated"

cinemas = [
  cinema1, cinema2, cinema3, cinema4, cinema5, cinema6, cinema7, cinema9, cinema10,
  cinema11, cinema12, cinema13, cinema14, cinema15, cinema16, cinema17, cinema26,
  cinema27, cinema28, cinema29, cinema30, cinema31, cinema32, cinema33, cinema34,
  cinema35, cinema37, cinema38, cinema39, cinema40, cinema41, cinema42, cinema43,
  cinema44, cinema45, cinema46, cinema47, cinema48, cinema49, cinema50, cinema51,
  cinema52, cinema53, cinema55, cinema56, cinema57, cinema58, cinema60, cinema62,
  cinema63, cinema64, cinema65, cinema66, cinema67, cinema68,
  cinema69, cinema70, cinema71, cinema72, cinema73, cinema74, cinema75, cinema76,
  cinema77, cinema78, cinema79, cinema80, cinema81, cinema82, cinema83, cinema84,
  cinema85, cinema86, cinema87, cinema88, cinema89, cinema90, cinema91, cinema92,
  cinema93, cinema94, cinema95, cinema96, cinema97, cinema98, cinema99, cinema100,
  cinema101, cinema102, cinema103, cinema104, cinema105, cinema106, cinema107
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
