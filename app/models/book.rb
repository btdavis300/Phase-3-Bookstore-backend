class Book < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews
    
    def self.sort_by_author
        order(:author)
    end

    def self.sort_by_title
        order(:name)
    end

    def self.sort_by_genre
        order(:genre)
    end

    def self.sort_by_ebooks
        where(ebook: true)
    end

    def self.sort_by_lowest_price
        order(:price)
    end

    def self.sort_by_highest_price
        order(:price).reverse
    end


    def self.sort_by_newest_book
        filtered_year = Time.now.year - 5
        selected_books= self.select {|i| i.published_date >= filtered_year}
    end

end