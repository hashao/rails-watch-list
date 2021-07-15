class List < ApplicationRecord

  has_many :bookmark, dependent: :destroy
  has_many :movies, through: :bookmark

  validates :name, uniqueness: true

end
