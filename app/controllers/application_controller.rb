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

  get "/books/newest_books" do
    books = Book.sort_by_newest_book
    books.to_json
  end

  get "/books/genre/:genre" do
    if params[:genre].include?("_")
      genre = params[:genre].tr('_', ' ').split.map(&:capitalize).join("/")
    else
      genre = params[:genre].tr('-', ' ').capitalize
    end
    books = Book.where(genre: genre)
    books.to_json
  end

  get "/books/ebooks" do
    books = Book.sort_by_ebooks
    books.to_json
  end

  post "/users/new_user" do
    new_user = User.create(
      name: params[:name],
      email: params[:email],
      password: params[:password]
    )
  end

    get "/users" do
    users = User.all
    users.to_json
    end

    get "/admins" do
      admins = Admin.all
      admins.to_json
      end

  get "/books/book/:id" do
    book = Book.find(params[:id])
    book.to_json
  end

  # Post Methods
  post "/all" do
    book = Book.create(
      name: params[:name],
      author: params[:author],
      genre: params[:genre],
      cart: nil,
      favorite: nil,
      ebook: params[:ebook],
      published_date: params[:published_date],
      price: params[:price],
      image: params[:image],
      description: params[:description]
    )
    book.to_json
  end

  # Delete Methods
  delete "/all/:id" do
    book = Book.find(params[:id])
    book.destroy
    book.to_json

  end

  #Patch Methods
  patch "/all/:id" do
    book = Book.find(params[:id])
    book.update(price: params[:price])
    book.to_json
  end

  get "/all/:id" do
    book = Book.find(params[:id])
    book.to_json
  end  

end
