class Episode < ApplicationRecord
  validates_presence_of :date, :number
  has_many :guests, through: :appearances
end
