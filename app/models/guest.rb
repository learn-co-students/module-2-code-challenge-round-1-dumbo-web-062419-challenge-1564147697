class Guest < ApplicationRecord
  has_many :visits
  has_many :episodes, through: :visits
end
