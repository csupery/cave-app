class Castle < ApplicationRecord
  belongs_to :appellation
  has_many :stocks, dependent: :destroy
  has_many :vintages, through: :stocks

  validates :name, presence: true
end
