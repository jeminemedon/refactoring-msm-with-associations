class Character < ApplicationRecord
  validates(:name, presence: true)

  belongs_to(:movie, class_name: "Movie", foreign_key: "movie_id")
  belongs_to(:actor, class_name: "Actor", foreign_key: "actor_id")
end

