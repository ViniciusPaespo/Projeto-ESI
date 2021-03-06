class Card < ActiveRecord::Base
    has_and_belongs_to_many :User 
    
    def self.search(search)
        if search
            self.where("title LIKE ? " , "%#{search}%")
        else
            self.all
        end
    end
    
end
