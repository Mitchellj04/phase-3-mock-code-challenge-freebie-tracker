class Company < ActiveRecord::Base

    has_many :freebies
    has_many :devs, through: :freebies


    def give_freebie item_name, dev, value 

        Freebie.create(item_name: :item_name, dev: :dev, value: :value, company: self)

    end

    def self.oldest_company
        self.order(:founding_year).first
    end
end
