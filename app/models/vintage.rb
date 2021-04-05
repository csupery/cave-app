class Vintage < ApplicationRecord
  belongs_to :castle
  has_many :stocks, dependent: :destroy

  validates :year, presence: true
end
