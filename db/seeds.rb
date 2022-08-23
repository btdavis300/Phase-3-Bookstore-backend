puts "🌱 Seeding admin"
10.times do
    Admin.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 10, max_length: 20, mix_case: true, special_characters: true)
    )
end

puts "🌱 Seeding users"
75.times do
    User.create(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        password: Faker::Internet.password
    )
end

puts "🌱 Seeding books"
300.times do
    Book.create(
        name: Faker::Book.title,
        author: Faker::Book.author,
        genre: Faker::Book.genre,
        cart: false,
        favorite: false,
        ebook: Faker::Boolean.boolean,
        published_date: rand(1800..Time.now.year),
        price: Faker::Number.between(from: 10, to: 50),
        image: Faker::LoremFlickr.image(size: "400x600", search_terms: ['books', 'reading'], match_all: true)
    )
end

puts "🌱 Seeding reviews"
500.times do
    Review.create(
        user_id: rand(1..75),
        admin_id: rand(1..10),
        book_id: rand(1..300),
        rating: rand(1..5),
        review: Faker::Lorem.paragraph(sentence_count: 2, supplemental: true, random_sentences_to_add: 5)
    )
end

puts "✅ Done seeding!"
