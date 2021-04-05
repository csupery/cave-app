class Castle < ApplicationRecord
  belongs_to :appellation
  has_many :vintages, dependent: :destroy

  validates :name, presence: true
end
