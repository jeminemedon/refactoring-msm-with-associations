class Movie < ApplicationRecord
  validates(:title, uniqueness: true)
  validates(:director_id, presence: true)

  belongs_to(:director, class_name: "Director", foreign_key: "director_id")

  has_many(:characters, class_name: "Character", foreign_key: "movie_id")
  has_many(:cast, through: :characters, source: :actor)
end
