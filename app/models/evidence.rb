class Evidence < ApplicationRecord
  validates :headline, presence: true
  validates :description, presence: true
  validates :category, presence: true

  has_many :endorsements
end
