class Word < ApplicationRecord
  has_many :descriptions
  validates :word, presence: true
end
