class Show < ApplicationRecord
  belongs_to :guest
  belongs_to :episode
end
