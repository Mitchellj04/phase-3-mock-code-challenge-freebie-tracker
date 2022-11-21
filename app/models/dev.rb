class Dev < ActiveRecord::Base

    has_many :freebies
    has_many :companies, through: :freebies

    def receive_one item_name
       finder = self.freebie do |f|
            f.item_name == item_name
        end
        !!Finder
    end


end
