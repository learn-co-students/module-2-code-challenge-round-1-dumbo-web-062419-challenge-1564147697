class Appearance < ApplicationRecord

	validates :rating, inclusion: {in: 1..5}
	validates :rating, :guest_id, :episode_id, presence: true

  belongs_to :guest
  belongs_to :episode
end
