class Review < ActiveRecord::Base
    belongs_to :user
    belongs_to :admin
    belongs_to :book
    
end