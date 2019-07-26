class Appearance < ApplicationRecord
  validates_inclusion_of :rating, in: 0..5

  belongs_to :guest
  belongs_to :episode
end
