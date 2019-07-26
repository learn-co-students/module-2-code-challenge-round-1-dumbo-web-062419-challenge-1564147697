class Guest < ApplicationRecord
    has_many :logs
    has_many :episodes, through: :logs
end
