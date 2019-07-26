class Episode < ApplicationRecord
    has_many :shows
    has_many :guest, through: :shows
end
