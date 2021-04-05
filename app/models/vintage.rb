class Vintage < ApplicationRecord
  has_many :stocks, dependent: :destroy

  validates :year, presence: true
end
