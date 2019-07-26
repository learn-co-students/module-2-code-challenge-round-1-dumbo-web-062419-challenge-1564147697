class Episode < ApplicationRecord
  has_many :shows
  has_many :episodes, through: :shows
end
