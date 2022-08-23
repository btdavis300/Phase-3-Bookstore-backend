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


end
