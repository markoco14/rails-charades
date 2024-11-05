class Word < ApplicationRecord
  has_many :descriptions, dependent: :destroy
  validates :word, presence: true
end
