# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# classic_cars: create an array of hashes. Each hash contains a model, seats, year, colour, image.
# take a sample from the array.
require "open-uri"
require "faker"

puts "destroying all cars"
Car.destroy_all
puts "done"
puts "destroying all users"
User.destroy_all
puts "done"

classic_cars = [{model: 'Jaguar E-Type', seats: '2', year: '1967', address: 'Beijing Zoo, Beijing', city: 'Beijing', colour: 'silver', image_one: 'https://hips.hearstapps.com/toc.h-cdn.co/assets/16/14/3200x1600/landscape-1459816624-1954-mercedes-300sl-gullwing-a.jpg?resize=980:*'},
                {model: 'Chevrolet Corvette c1', seats: '2', year: '1963', address: 'Hall of Prayer for Good Harvests, Beijing', city: 'Beijing',  colour: 'red', image_one: 'https://hips.hearstapps.com/toc.h-cdn.co/assets/16/14/2560x1906/1968-chevrolet-corvette_1.jpg?resize=980:*'},
                {model: 'Lamborghini Miura', seats: '2', year: '1966', address: 'Beijing Normal University, Beijing', city: 'Beijing', colour: 'green', image_one: 'https://hips.hearstapps.com/toc.h-cdn.co/assets/16/14/3200x2136/1971-lamborghini-miura-sv_1.jpg?resize=980:*'},
                {model: 'porsche 911 1974', seats: '2', year: '1974', address: 'Lianhuachi Park, Beijing', city: 'Beijing', colour: 'white', image_one: 'https://hips.hearstapps.com/toc.h-cdn.co/assets/16/14/1024x577/1967-porsche-911-r_1.jpg?resize=980:*'},
                {model: 'rolls-royce dawn drophead 1949', seats: '4', year: '1949', address: 'Guidu Hotel Beijing, Beijing', city: 'Beijing', colour: 'Silver and Blue', image_one: 'https://hips.hearstapps.com/toc.h-cdn.co/assets/16/14/4000x2591/1952-rolls-royce-silver-dawn_1.jpg?resize=980:*'},
                {model: 'Mercedes SL 300 Gullwing', seats: '2', year: '1954', address: 'Ritan E Rd, Chaoyang, Beijing, China', city: 'Beijing', colour: 'Silver', image_one: 'https://hips.hearstapps.com/toc.h-cdn.co/assets/16/14/3200x1655/1954-mercedes-300sl-gullwing-a_1.jpg?resize=980:*'},
                {model: 'Ferrari 250 GTO', seats: '2', year: '1962', address: '15 Guanghua Rd, Jian Wai Da Jie, Chaoyang, Beijing, China', city: 'Beijing', colour: 'Red', image_one: 'https://www.supercars.net/blog/wp-content/uploads/2016/05/Screenshot-2016-05-16-15.39.33.png'},
                {model: 'Aston Martin DB4', seats: '2', year: '1966', address: '11 Donghuamen St, Dongcheng, Beijing, China', city: 'Beijing', colour: 'silver', image_one: 'https://hips.hearstapps.com/toc.h-cdn.co/assets/16/14/4000x2656/1954-aston-martin-db4_1.jpg?resize=980:*'},
                {model: 'BMW 3.0 CSL', seats: '2', year: '1975', address: 'Ritan E Rd, Chaoyang, Beijing, China', city: 'Beijing', colour: 'white with blue trim', image_one: 'https://hips.hearstapps.com/toc.h-cdn.co/assets/16/14/3200x2144/gallery-1459817843-gettyimages-165569289.jpg?resize=980:*'},
                {model: 'Acura NSX', seats: '2', year: '1990', address: "Wangjing Hospital, Beijing", city: 'Beijing', colour: 'blue', image_one: 'https://hips.hearstapps.com/toc.h-cdn.co/assets/16/14/2560x1706/2005-acura-nsx_1.jpg?resize=980:*'},
                {model: 'Shelby GT350', seats: '2', year: '1967', address: 'Shanghai Confucian Temple, Shanghai', city: 'Shanghai', colour: 'Blue', image_one: 'https://www.legendarymotorcar.com/images/Vehicles/2016/5/1967-Ford-Mustang-Shelby-GT350-1264-138.jpg'},
                {model: 'Ford Model T', seats: '4', year: '1908', address: "Zhongshan Hospital, Shanghai, China, 200030", city: 'Shanghai', colour: 'Black', image_one: 'https://hips.hearstapps.com/toc.h-cdn.co/assets/16/19/4000x3107/gallery-1462806127-1922-ford-model-t.jpg?resize=980:*'},
                {model: 'VW Beetle', seats: '4', year: '1935', address: 'Shanghai Institute of Technology, Shanghai', city: 'Shanghai', colour: 'blue', image_one: 'https://hips.hearstapps.com/toc.h-cdn.co/assets/16/18/4000x2669/vw-beetle-a.jpg?resize=980:*'},
                {model: 'Volvo P1800', seats: '2', year: '1974', address: 'Shanghai Hongqiao International Airport, Shanghai', city: 'Shanghai', colour: 'red', image_one: 'https://hips.hearstapps.com/toc.h-cdn.co/assets/16/18/3200x2473/gallery-1462570502-1967-volvo-1800s.jpg?resize=980:*'},
                {model: 'Dodge Viper GTS', seats: '2', year: '1990', address: 'Shanghai Disneyland, Shanghai', city: 'Shanghai', colour: 'Blue with white stripes', image_one: 'https://hips.hearstapps.com/toc.h-cdn.co/assets/16/18/2048x1361/dodge-viper-gts.jpeg?resize=980:*'},
                {model: 'DeTomaso Pantera', seats: '2', year: '1971', address: "Century Park, Shanghai", city: 'Shanghai', colour: 'Red', image_one: 'https://hips.hearstapps.com/toc.h-cdn.co/assets/16/18/4000x3117/1972-detomaso-pantera-a.jpg?resize=980:*'},
                {model: 'Cizeta-Moroder V16T', seats: '2', year: '1991', address: 'MengQing Museum, Shangai', city: 'Shanghai', colour: 'red', image_one: 'https://hips.hearstapps.com/toc.h-cdn.co/assets/16/18/cizeta-moroder-v16t.jpg?crop=1xw:1.0xh;center,top&resize=980:*'},
                {model: 'Porsche 356', seats: '2', year: '1965', address: 'China, Shanghai, Pudong, Shangcheng Rd, 665', city: 'Shanghai', colour: 'red', image_one: 'https://hips.hearstapps.com/toc.h-cdn.co/assets/16/18/2048x1532/gallery-1462571225-porsche-356-c-coupe.jpg?resize=980:*'},
                {model: 'Datsun 240Z', seats: '2', year: '1972', address: '20 Guangdong Rd, Waitan, Huangpu, Shanghai, China', city: 'Shanghai', colour: 'silver', image_one: 'https://hips.hearstapps.com/toc.h-cdn.co/assets/16/18/2560x1706/1972-datsun-240z.jpg?resize=980:*'},
                {model: 'Ferrari 308 GTS', seats: '2', year: '1975', address: 'Rockbund Art Museum, Shanghai', city: 'Shanghai', colour: 'red', image_one: 'https://hips.hearstapps.com/toc.h-cdn.co/assets/16/18/4000x3983/ferrari-308-gts-a.jpg?resize=980:*'},
                {model: 'Chevrolet Camaro', seats: '4', year: '1967', address: "Shenzhen 2nd City Hospital, Shenzhen", city: 'Shenzhen', colour: 'red', image_one: 'https://hips.hearstapps.com/toc.h-cdn.co/assets/16/18/2560x1706/1967-camaro.jpg?resize=980:*'},
                {model: 'Fiat 124 Spider', seats: '2', year: '1968', address: "Cuizhu Park, Shenzhen", city: 'Shenzhen', colour: 'red', image_one: 'https://hips.hearstapps.com/toc.h-cdn.co/assets/16/18/4000x4037/1968-fiat-124-spider-a.jpg?resize=980:*'},
                {model: 'Austin-Healey 3000', seats: '2', year: '1959', address: 'Shenzhen Railway Station, Shenzhen', city: 'Shenzhen', colour: 'silver', image_one: 'https://hips.hearstapps.com/toc.h-cdn.co/assets/16/18/1024x680/austin-healey-3000.jpg?resize=980:*'},
                {model: '1935 Duesenberg SJ LA Phaeton', seats: '4', year: '1932', address: 'Lou Hospital, Shenzhen', city: 'Shenzhen', colour: 'red', image_one: 'http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/800px-Duesenberg_Convertible_SJ_LA_Grand_Dual-Cowl_Phaeton_1.jpg'},
                {model: '1957 Corvette', seats: '2', year: '1957', address: 'Shun Hing Square, Shenzhen', city: 'Shenzhen', colour: 'red', image_one: 'http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/1957-corvette-hugo90778-l.jpg'},
                {model: 'Volkwagen Beetle', seats: '4', year: '1963', address: 'Luohu Art Museum, Shenzhen', city: 'Shenzhen', colour: 'orange', image_one: 'http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/meirelles836-l.jpg'},
                {model: 'Shelby Cobra', seats: '2', year: '1960', address: 'Hui Hotel Shenzhen, Shenzhen', city: 'Shenzhen', colour: 'red', image_one: 'http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/carroll-shelby-427-cobra-pdbreen487-l.jpg'},
                {model: 'Lamborghini Countach', seats: '2', year: '1989', address: 'The 8th Affiliated Hospital, Shenzhen', city: 'Shenzhen', colour: 'red', image_one: "http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/lamborghini-countach-exfordy470-l.jpg"},
                {model: 'Reliant Robin', seats: '2', year: '1960', address: 'The Ritz Carlton Shenzhen, Shenzhen', city: 'Shenzhen', colour: 'brown', image_one: 'http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/reliant-regal-supervan-e3-sludgegulper132-l.jpg'},
                {model: 'Dodge Charger', seats: '4', year: '1969', address: '2013 Wenjin S Rd, Luohu District, Shenzhen, Guangdong Province, China', city: 'Shenzhen', colour: 'orange', image_one: 'http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/cooters-dukes-of-hazard-museum-cliffl.jpg'},
                {model: 'Rolls Royce Phantom', seats: '4', year: '1952', address: 'Shenzhen Industrial Museum, Shenzhen', city: 'Shenzhen', colour: 'silver', image_one: 'http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/img_4023-simon-davison631-l.jpg'},
                {model: 'Studebaker Commander', seats: '4', year: '1964', address: 'China, Guangdong Province, Shenzhen, Futian District, Mintian Rd', city: 'Shenzhen', colour: 'blue', image_one: 'http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/1950-studebaker-commander-cstreet.jpg'},
                {model: '1959 Cadillac Eldorado', seats: '4', year: '1959', address: '2nd Chengdu People???s Hospital, Chengdu', city: 'Chengdu', colour: 'orange', image_one: 'http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/cadillac-eldorado-1959-red-rear-michi1308583-l.jpg'},
                {model: 'Porsche 911', seats: '2', year: '1963', address: 'Sichuan Conservatory of Music, Chengdu', city: 'Chengdu', colour: 'white', image_one: 'http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/techart-tuned-porsche-911-turbo-carspotter405-l.jpg'},
                {model: 'Shelby Mustang Cobra', seats: '4', year: '1968', address: 'West China Hospital, Chengdu', city: 'Chengdu', colour: 'gold', image_one: 'http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/img_7032-simon-davison686-l.jpg'},
                {model: '1978 Pontiac Firebird Trans Am', seats: '4', year: '1978', address: 'Southwest University for Nationalities, Chengdu', city: 'Chengdu',  colour: 'black', image_one: 'http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/1978_Trans-Am.jpg'},
                {model: 'Delorean DMC 12', seats: '2', year: '1981', address: 'Jingchuan Hotel, Chengdu', city: 'Chengdu', colour: 'silver', image_one: 'http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/1983-delorean-dmc-12-dave_7221-l.jpg'},
                {model: 'Ford Roadster', seats: '2', year: '1932', address: 'Chengdu Yongling Museum, Chengdu', city: 'Chengdu', colour: 'Black Flame', image_one: 'http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/1932-ford-roadster-leominster-img_0154-omninate306-l.jpg'},
                {model: '1955 Chevy Bel Air', seats: '4', year: '1955', address: 'Upper Class Celebrity Hotel, Chendu', city: 'Chengdu', colour: 'red', image_one: 'http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/car-show-in-yoctangee-park-dok1831-l.jpg'},
                {model: 'Ford GT40', seats: '2', year: '1966', address: 'UESTC Hospital, Chengdu', city: 'Chengdu', colour:'white', image_one: 'http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/fordgt40.jpg'},
                {model: '1937 Packard', seats: '4', year: '1937', address: 'Soldier Pea Noodle, Chengdu', city: 'Chengdu', colour: 'blue', image_one: 'http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/de-haan--packard-1937-belgapixels867-l.jpg'},
                {model: 'Mercedes Benz 300sl', seats: '2', year: '1952', address: 'Huanggang 5th St, Futian District, Shenzhen, Guangdong Province, China', city: 'Shenzhen', colour: 'silver', image_one: 'http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/mercedes-benz-300sl-2-alan_d217-l.jpg'},
                {model: 'Jaguar xk120', seats: '2', year: '1948', address: 'Huanggang 5th St, Futian District, Shenzhen, Guangdong Province, China', city: 'Shenzhen', colour: 'Dark green', image_one: 'http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/curves-for-days-underwhelmer447-l.jpg'},
                {model: 'El Camino', seats: '2', year: '1960', address: '136 Fuxiang St, Futian District, Shenzhen, Guangdong Province, China', city: 'Shenzhen', colour: 'orange', image_one: 'http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/chevy-el-camino-l.jpg'},
                {model: 'Stout Scarab', seats: '2', year: '1930', address: '1072 Jianshe Rd, Carrianna Shopping Plaza, Luohu District, Shenzhen, Guangdong Province, China, 518001', city: 'Shenzhen', colour: 'brown', image_one: 'http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/800px-Stout_Scarab.JPG'},
                {model: 'Pierce Silver Arrow', seats: '4', year: '1933', address: '3037 Jintian Rd, Fu Tian C B D, Futian District, Shenzhen, Guangdong Province, China', city: 'Shenzhen', colour: 'red', image_one: 'http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/1935-pierce-arrow.jpg'},
                {model: '1969 Chevelle', seats: '4', year: '1969', address: '137 Xizhimen Outer St, Dong Wu Yuan, Xicheng District, Beijing, China', city: 'Beijing', colour: 'blue', image_one: 'http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/1969_chevrolet_chevelle_yenko_sc_427_blue_top_rt_frt_qtr-mas.jpg'},
                {model: 'Ferrari 288', seats: '2', year: '1986', address: 'Ritan E Rd, Chaoyang, Beijing, China', city: 'Beijing', colour: 'red', image_one: 'http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/800px-FerrariGTO.jpg'},
                {model: 'Jaguar S-3', seats: '2', year: '1963', address: '11 Donghuamen St, Dongcheng, Beijing, China', city: 'Beijing', colour: 'silver', image_one: 'http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/jaguar-e-type-s3-v12-coupe-ed-callow--torquespeak-995-l.jpg'},
                {model: 'Lotus Esprit', seats: '2', year: '1976', address: 'Chunxiu Rd, Chaoyang, Beijing, China', city: 'Beijing', colour: 'black', image_one: 'http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/lotus-esprit-dave_7360-l.jpg'},
                {model: '1957 Ford Thunderbird', seats: '2', year: '1957', address: 'Dongzhimen Hospital, Beijing', city: 'Beijing', colour: 'red', image_one: 'http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/1957-ford-thunderbird--custom_cab396-l.jpg'},
                {model: 'Ford Edsel', seats: '4', year: '1954', address: 'Forbidden City, Beijing', city: 'Beijing', colour: 'white', image_one: 'http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/ford-edsel-679uxe-coradia100057-l.jpg'},
                {model: 'Chrysler Airflow', seats: '4', year: '1934', address: '70 Fuzhou Rd, Wai Tan, Huangpu, Shanghai, China', city: 'Shanghai', colour: 'brown', image_one: 'http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/1934-chrysler-airflow-resedabear963-l.jpg'},
                {model: 'Alfa Romeo Spider', seats: '4', year: '1966', address: '38 Gao You Lu, Xuhui District, Shanghai, China', city: 'Shanghai', colour: 'white', image_one: 'http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/alfa-romeo-spider-dave_7681-l.jpg'},
                {model: '1969 Camaro', seats: '4', year: '1969', address: 'LDF All Suites Hotel, Shanghai', city: 'Shanghai', colour: 'red', image_one: 'http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/1969_chevrolet_camaro_rs_350_convertible_red_frt_qtr-mashley.jpg'},
                {model: 'AMC Gremlin', seats: '4', year: '1970', address: "Shanghai Ninth People's Hospital, Shanghai", city: 'Shanghai', colour: 'red', image_one: 'http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/amc-gremlin-dave_7274-l.jpg'},
                {model: 'VW Minibus', seats: '8', year: '1960', address: "People's Square, Huangpu, China", city: 'Shanghai', colour: 'red and white', image_one: 'http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/vw-minibus---abbey-street-infomatique40-l.jpg'},
              ]

# address = ['Beijing', 'Shanghai', 'Tianjin', 'Chengdu', 'Shenzhen', 'Guangzhou', 'Chongqing', 'Dongguan']

classic_cars.each_with_index do |car, index|
  if index == 5
    puts car[:model]
  end
end

count = 0

30.times do
  new_user = User.new(
    email: Faker::Internet.email,
    password: "123456",
    username: Faker::Name.name
    )
  new_user.save
  puts "created new user: #{new_user.username}"
  break_loop = rand(2)
  classic_cars.each_with_index do |car, index|
      if index == count && break_loop < 3
        file = URI.open(car[:image_one])
        new_car = Car.new(
          model: car[:model],
          seats: car[:seats],
          year: car[:year],
          colour: car[:colour],
          image_one: car[:image_one],
          city: car[:city],
          price: rand(100),
          address: car[:address],
          user_id: new_user.id,
          description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4)
          )
        new_car.photo.attach(io: file, filename: "#{car[:model]}.jpg", content_type: 'image/jpg')
        new_car.save!
        puts "#{new_user.username} has a #{new_car.model}"
        count += 1
        break_loop += 1

        rand(1..5).times do
          review_user = User.new(
            email: Faker::Internet.email,
            password: "123456",
            username: Faker::Name.name
            )
          review_user.save!

          review = Review.new(
            comment: Faker::TvShows::Seinfeld.quote,
            star: rand(1..5),
            user_id: review_user.id,
            car_id: new_car.id
            )
          review.save!
        end
      end
    end
  end

puts "created #{User.count} new users and #{Car.count} new cars."

















# 100.times do
#   new_user = User.new(
#     email: Faker::Internet.email,
#     password: "123456",
#     username: Faker::Name.name
#     )
#   new_user.save
#   puts "created new user: #{new_user.username}"
#   rand(1..3).times do
#     classic_car = classic_cars.sample
#     file = URI.open(classic_car[:image_one])
#     new_car = Car.new(
#       model: classic_car[:model],
#       seats: classic_car[:seats],
#       year: classic_car[:year],
#       colour: classic_car[:colour],
#       image_one: classic_car[:image_one],
#       price: rand(100),
#       address: classic_car[:address],
#       user_id: new_user.id,
#       description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4)
#       )
#     new_car.photo.attach(io: file, filename: "#{classic_car[:model]}.jpg", content_type: 'image/jpg')
#     new_car.save!
#     puts "#{new_user.username} has a #{new_car.model}"
#   end
# end

# puts "created #{User.count} new users and #{Car.count} new cars."













