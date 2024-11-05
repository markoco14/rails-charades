class Description < ApplicationRecord
  belongs_to :word

  validates :description, presence: true
end
