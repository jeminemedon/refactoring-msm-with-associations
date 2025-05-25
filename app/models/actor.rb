class Actor < ApplicationRecord
  validates(:name, presence: true)

  has_many(:characters, class_name: "Character", foreign_key: "actor_id")
  has_many(:filmography, through: :characters, source: :movie)
end
