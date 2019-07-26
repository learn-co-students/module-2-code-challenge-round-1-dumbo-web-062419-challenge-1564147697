class Episode < ApplicationRecord
    has_many :logs
    has_many :guests, through: :logs

end
