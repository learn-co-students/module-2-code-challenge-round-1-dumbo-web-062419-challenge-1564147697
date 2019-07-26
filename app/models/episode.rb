class Episode < ApplicationRecord
  has_many :visits
  has_many :guests, through: :visits
end
