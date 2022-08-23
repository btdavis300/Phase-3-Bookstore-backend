class Review < ActiveRecord::Base
    belongs_to :user
    belongs_to :admin
    belongs_to :book
   
    def self.highest_rating
     popular_books = where(rating: 5)
     popular_books.map {|review| review.book}
    end

end