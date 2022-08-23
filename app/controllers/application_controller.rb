class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    books = Book.all.first(5)
    books.to_json
  end

  get "/books/author" do
    books = Book.sort_by_author
    books.to_json
  end

end
