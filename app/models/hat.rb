class Hat < ApplicationRecord
  belongs_to :user
  has_many :movies, dependent: :destroy
  has_one_attached :photo
end
