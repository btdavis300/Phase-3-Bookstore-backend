class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/all" do
    books = Book.all
    books.to_json
  end

  get "/books/author" do
    books = Book.sort_by_author
    books.to_json
  end

  get "/books/popular_books" do
    books = Review.highest_rating
    books.to_json
  end


end
