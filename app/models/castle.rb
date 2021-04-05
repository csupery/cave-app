class Castle < ApplicationRecord
  belongs_to :appellation
  has_many :stocks, dependent: :destroy

  validates :name, presence: true
end
