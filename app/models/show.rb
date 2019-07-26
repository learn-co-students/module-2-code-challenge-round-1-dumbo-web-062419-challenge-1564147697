class Show < ApplicationRecord
  validates :guest_id, presence: true
  validates :episode_id, presence: true
  validates :rating, presence: true
  belongs_to :guest
  belongs_to :episode
end
