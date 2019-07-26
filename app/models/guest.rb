class Guest < ApplicationRecord
    has_many :shows
    has_many :episode, through: :shows

end
