class Appearance < ApplicationRecord

  validates :rating, numericality: {greater_than_or_equal_to: 0}
  validates :rating, numericality: {less_than_or_equal_to: 5}

  belongs_to :guest
  belongs_to :episode
end
