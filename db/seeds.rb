require "open-uri"
puts "creating movies..."

file = URI.open('https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg')
wonder = Movie.new(title: "Wonder Woman 1984", overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s", rating: 6.9)
wonder.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
wonder.save 

file2 = URI.open("https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg")
shaw = Movie.new(title: "The Shawshank Redemption", overview: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison", rating: 8.7)
shaw.photo.attach(io: file2, filename: 'nes2.jpg', content_type: 'image/jpg')
shaw.save

file3 = URI.open("https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg")
titanic = Movie.new(title: "Titanic", overview: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.", rating: 7.9)
titanic.photo.attach(io: file3, filename: 'nes3.jpg', content_type: 'image/jpg')
titanic.save

file4 = URI.open("https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg")
ocean = Movie.new(title: "Ocean's Eight", overview: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.", rating: 7.0)
ocean.photo.attach(io: file4, filename: 'nes4.jpg', content_type: 'image/jpg')
ocean.save

puts "#{Movie.count} movies created" 