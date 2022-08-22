class Book < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews
    
    def self.sort_by_author
        order(:author)
    end

end