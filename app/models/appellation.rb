class Appellation < ApplicationRecord
  has_many :castles, dependent: :destroy

  validates :name, presence: true
  validates :location, presence: true
end
