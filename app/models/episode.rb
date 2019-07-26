class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances

    validates :date, :number, presence: true

end
