# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# classic_cars: create an array of hashes. Each hash contains a model, seats, year, colour, image.
# take a sample from the array.
puts "destroying all cars"
Car.destroy_all
puts "done"
puts "destroying all users"
User.destroy_all
puts "done"

classic_cars = [{model: 'Jaguar E-Type', seats: '2', year: '1967', colour: 'silver', image_one: 'https://hips.hearstapps.com/toc.h-cdn.co/assets/16/14/3200x1600/landscape-1459816624-1954-mercedes-300sl-gullwing-a.jpg?resize=980:*'},
                {model: 'Chevrolet Corvette c1', seats: '2', year: '1963', colour: 'red', image_one: 'https://hips.hearstapps.com/toc.h-cdn.co/assets/16/14/2560x1906/1968-chevrolet-corvette_1.jpg?resize=980:*'},
                {model: 'Lamborghini Miura', seats: '2', year: '1966', colour: 'green', image_one: 'https://hips.hearstapps.com/toc.h-cdn.co/assets/16/14/3200x2136/1971-lamborghini-miura-sv_1.jpg?resize=980:*'},
                {model: 'porsche 911 1974', seats: '2', year: '1974', colour: 'white', image_one: 'https://hips.hearstapps.com/toc.h-cdn.co/assets/16/14/1024x577/1967-porsche-911-r_1.jpg?resize=980:*'},
                {model: 'rolls-royce dawn drophead 1949', seats: '4', year: '1949', colour: 'Silver and Blue', image_one: 'https://hips.hearstapps.com/toc.h-cdn.co/assets/16/14/4000x2591/1952-rolls-royce-silver-dawn_1.jpg?resize=980:*'},
                {model: 'Mercedes SL 300 Gullwing', seats: '2', year: '1954', colour: 'Silver', image_one: 'https://hips.hearstapps.com/toc.h-cdn.co/assets/16/14/3200x1655/1954-mercedes-300sl-gullwing-a_1.jpg?resize=980:*'},
                {model: 'Ferrari 250 GTO', seats: '2', year: '1962', colour: 'Red', image_one: 'https://www.supercars.net/blog/wp-content/uploads/2016/05/Screenshot-2016-05-16-15.39.33.png'},
                {model: 'Aston Martin DB4', seats: '2', year: '19', colour: 'silver', image_one: 'https://hips.hearstapps.com/toc.h-cdn.co/assets/16/14/4000x2656/1954-aston-martin-db4_1.jpg?resize=980:*'},
                {model: 'BMW 3.0 CSL', seats: '2', year: '1975', colour: 'white with blue trim', image_one: 'https://hips.hearstapps.com/toc.h-cdn.co/assets/16/14/3200x2144/gallery-1459817843-gettyimages-165569289.jpg?resize=980:*'},
                {model: 'Acura NSX', seats: '2', year: '1990', colour: 'blue', image_one: 'https://hips.hearstapps.com/toc.h-cdn.co/assets/16/14/2560x1706/2005-acura-nsx_1.jpg?resize=980:*'},
                {model: 'Shelby GT350', seats: '2', year: '1967', colour: 'Blue', image_one: 'https://www.legendarymotorcar.com/images/Vehicles/2016/5/1967-Ford-Mustang-Shelby-GT350-1264-138.jpg'},
                {model: 'Ford Model T', seats: '4', year: '1908', colour: 'Black', image_one: 'https://hips.hearstapps.com/toc.h-cdn.co/assets/16/19/4000x3107/gallery-1462806127-1922-ford-model-t.jpg?resize=980:*'},
                {model: 'VW Beetle', seats: '4', year: '1935', colour: 'blue', image_one: 'https://hips.hearstapps.com/toc.h-cdn.co/assets/16/18/4000x2669/vw-beetle-a.jpg?resize=980:*'},
                {model: 'Volvo P1800', seats: '2', year: '1974', colour: 'red', image_one: 'https://hips.hearstapps.com/toc.h-cdn.co/assets/16/18/3200x2473/gallery-1462570502-1967-volvo-1800s.jpg?resize=980:*'},
                {model: 'Dodge Viper GTS', seats: '2', year: '1990', colour: 'Blue with white stripes', image_one: 'https://hips.hearstapps.com/toc.h-cdn.co/assets/16/18/2048x1361/dodge-viper-gts.jpeg?resize=980:*'},
                {model: 'DeTomaso Pantera', seats: '2', year: '1971', colour: 'Red', image_one: 'https://hips.hearstapps.com/toc.h-cdn.co/assets/16/18/4000x3117/1972-detomaso-pantera-a.jpg?resize=980:*'},
                {model: 'Cizeta-Moroder V16T', seats: '2', year: '1991', colour: 'red', image_one: 'https://hips.hearstapps.com/toc.h-cdn.co/assets/16/18/cizeta-moroder-v16t.jpg?crop=1xw:1.0xh;center,top&resize=980:*'},
                {model: 'Porsche 356', seats: '2', year: '1965', colour: 'red', image_one: 'https://hips.hearstapps.com/toc.h-cdn.co/assets/16/18/2048x1532/gallery-1462571225-porsche-356-c-coupe.jpg?resize=980:*'},
                {model: 'Datsun 240Z', seats: '2', year: '1972', colour: 'silver', image_one: 'https://hips.hearstapps.com/toc.h-cdn.co/assets/16/18/2560x1706/1972-datsun-240z.jpg?resize=980:*'},
                {model: 'Ferrari 308 GTS', seats: '2', year: '1975', colour: 'red', image_one: 'https://hips.hearstapps.com/toc.h-cdn.co/assets/16/18/4000x3983/ferrari-308-gts-a.jpg?resize=980:*'},
                {model: 'Chevrolet Camaro', seats: '4', year: '1967', colour: 'red', image_one: 'https://hips.hearstapps.com/toc.h-cdn.co/assets/16/18/2560x1706/1967-camaro.jpg?resize=980:*'},
                {model: 'Fiat 124 Spider', seats: '2', year: '1968', colour: 'red', image_one: 'https://hips.hearstapps.com/toc.h-cdn.co/assets/16/18/4000x4037/1968-fiat-124-spider-a.jpg?resize=980:*'},
                {model: 'Austin-Healey 3000', seats: '2', year: '1959', colour: 'silver', image_one: 'https://hips.hearstapps.com/toc.h-cdn.co/assets/16/18/1024x680/austin-healey-3000.jpg?resize=980:*'},
                {model: '1935 Duesenberg SJ LA Phaeton', seats: '4', year: '1932', colour: 'red', image_one: 'http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/800px-Duesenberg_Convertible_SJ_LA_Grand_Dual-Cowl_Phaeton_1.jpg'},
                {model: '1957 Corvette', seats: '2', year: '1957', colour: 'red', image_one: 'http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/1957-corvette-hugo90778-l.jpg'},
                {model: 'Volkwagen Beetle', seats: '4', year: '1963', colour: 'orange', image_one: 'http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/meirelles836-l.jpg'},
                {model: 'Shelby Cobra', seats: '2', year: '1960', colour: 'red', image_one: 'http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/carroll-shelby-427-cobra-pdbreen487-l.jpg'},
                {model: 'Lamborghini Countach', seats: '2', year: '1989', colour: 'red', image_one: "http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/lamborghini-countach-exfordy470-l.jpg"},
                {model: 'Reliant Robin', seats: '2', year: '1960', colour: 'brown', image_one: 'http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/reliant-regal-supervan-e3-sludgegulper132-l.jpg'},
                {model: 'Dodge Charger', seats: '4', year: '1969', colour: 'orange', image_one: 'http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/cooters-dukes-of-hazard-museum-cliffl.jpg'},
                {model: 'Rolls Royce Phantom', seats: '4', year: '1952', colour: 'silver', image_one: 'http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/img_4023-simon-davison631-l.jpg'},
                {model: 'Studebaker Commander', seats: '4', year: '1964', colour: 'blue', image_one: 'http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/1950-studebaker-commander-cstreet.jpg'},
                {model: '1959 Cadillac Eldorado', seats: '4', year: '1959', colour: 'orange', image_one: 'http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/cadillac-eldorado-1959-red-rear-michi1308583-l.jpg'},
                {model: 'Porsche 911', seats: '2', year: '1963', colour: 'white', image_one: 'http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/techart-tuned-porsche-911-turbo-carspotter405-l.jpg'},
                {model: 'Shelby Mustang Cobra', seats: '4', year: '1968', colour: 'gold', image_one: 'http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/img_7032-simon-davison686-l.jpg'},
                {model: '1978 Pontiac Firebird Trans Am', seats: '4', year: '1978', colour: 'black', image_one: 'http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/1978_Trans-Am.jpg'},
                {model: 'Delorean DMC 12', seats: '2', year: '1981', colour: 'silver', image_one: 'http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/1983-delorean-dmc-12-dave_7221-l.jpg'},
                {model: 'Ford Roadster', seats: '2', year: '1932', colour: 'Black Flame', image_one: 'http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/1932-ford-roadster-leominster-img_0154-omninate306-l.jpg'},
                {model: '1955 Chevy Bel Air', seats: '4', year: '1955', colour: 'red', image_one: 'http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/car-show-in-yoctangee-park-dok1831-l.jpg'},
                {model: 'Ford GT40', seats: '2', year: '1966', colour:'white', image_one: 'http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/fordgt40.jpg'},
                {model: '1937 Packard', seats: '4', year: '1937', colour: 'blue', image_one: 'http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/de-haan--packard-1937-belgapixels867-l.jpg'},
                {model: 'Mercedes Benz 300sl', seats: '2', year: '1952', colour: 'silver', image_one: 'http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/mercedes-benz-300sl-2-alan_d217-l.jpg'},
                {model: 'Jaguar xk120', seats: '2', year: '1948', colour: 'Dark green', image_one: 'http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/curves-for-days-underwhelmer447-l.jpg'},
                {model: 'El Camino', seats: '2', year: '1960', colour: 'orange', image_one: 'http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/chevy-el-camino-l.jpg'},
                {model: 'Stout Scarab', seats: '2', year: '1930', colour: 'brown', image_one: 'http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/800px-Stout_Scarab.JPG'},
                {model: 'Pierce Silver Arrow', seats: '4', year: '1933', colour: 'red', image_one: 'http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/1935-pierce-arrow.jpg'},
                {model: '1969 Chevelle', seats: '4', year: '1969', colour: 'blue', image_one: 'http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/1969_chevrolet_chevelle_yenko_sc_427_blue_top_rt_frt_qtr-mas.jpg'},
                {model: 'Ferrari 288', seats: '2', year: '1986', colour: 'red', image_one: 'http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/800px-FerrariGTO.jpg'},
                {model: 'Jaguar S-3', seats: '2', year: '1963', colour: 'silver', image_one: 'http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/jaguar-e-type-s3-v12-coupe-ed-callow--torquespeak-995-l.jpg'},
                {model: 'Lotus Esprit', seats: '2', year: '1976', colour: 'black', image_one: 'http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/lotus-esprit-dave_7360-l.jpg'},
                {model: '1957 Ford Thunderbird', seats: '2', year: '1957', colour: 'red', image_one: 'http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/1957-ford-thunderbird--custom_cab396-l.jpg'},
                {model: 'Ford Edsel', seats: '4', year: '1954', colour: 'white', image_one: 'http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/ford-edsel-679uxe-coradia100057-l.jpg'},
                {model: 'Chrysler Airflow', seats: '4', year: '1934', colour: 'brown', image_one: 'http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/1934-chrysler-airflow-resedabear963-l.jpg'},
                {model: 'Alfa Romeo Spider', seats: '4', year: '1966', colour: 'white', image_one: 'http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/alfa-romeo-spider-dave_7681-l.jpg'},
                {model: '1969 Camaro', seats: '4', year: '1969', colour: 'red', image_one: 'http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/1969_chevrolet_camaro_rs_350_convertible_red_frt_qtr-mashley.jpg'},
                {model: 'AMC Gremlin', seats: '4', year: '1970', colour: 'red', image_one: 'http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/amc-gremlin-dave_7274-l.jpg'},
                {model: 'VW Minibus', seats: '8', year: '1960', colour: 'red and white', image_one: 'http://www.truckchamp.com/60%20Iconic%20and%20Classic%20Cars_files/vw-minibus---abbey-street-infomatique40-l.jpg'},
              ]

address = ['Beijing', 'Shanghai', 'Tianjin', 'Chengdu', 'Shenzhen', 'Guangzhou', 'Chongqing', 'Dongguan']

