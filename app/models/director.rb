class Director < ApplicationRecord
  validates(:name, presence: true)

  has_many(:filmography, class_name: "Movie", foreign_key: "director_id")
end
