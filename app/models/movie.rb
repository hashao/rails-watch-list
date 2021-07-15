class Movie < ApplicationRecord

  has_many :bookmark, dependent: :destroy
  validates :title, uniqueness: true

end
