class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :comment, presence: true, length: {minimum: 6}
  validates :movie_id, uniqueness: {scope: :list_id, message: "Esta película ya existe en su lista." }
  # Ex:- scope :active, -> {where(:active => true)}}
  
  
end
