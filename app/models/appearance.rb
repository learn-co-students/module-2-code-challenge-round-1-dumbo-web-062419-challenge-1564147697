class Appearance < ApplicationRecord
  validates_presence_of :rating,:guest_id, :episode_id
  belongs_to :guest
  belongs_to :episode
end
