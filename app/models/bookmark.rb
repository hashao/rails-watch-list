class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :movie, uniqueness: { scope: :list,
    message: "movie and list id should be paired" }
  validates :comment, length: {mininum: 6, too_short: "6 characters at least" }
end
