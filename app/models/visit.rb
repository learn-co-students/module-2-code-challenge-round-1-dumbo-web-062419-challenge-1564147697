class Visit < ApplicationRecord

validates :rating, numericality: {greater_than_or_equal_to: 1}
validates :rating, numericality: {less_than_or_equal_to: 5}


  belongs_to :episode
  belongs_to :guest




end
