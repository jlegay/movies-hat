class Movie < ApplicationRecord
  belongs_to :hat
  has_one_attached :photo
end
