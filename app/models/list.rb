class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  validates :name , presence: true , uniqueness: true
  #validates :match_url , presence: true , uniqueness: true

end
