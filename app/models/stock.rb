class Stock < ApplicationRecord
  belongs_to :castle
  belongs_to :vintage

  enum size: SIZE
  validates :quantity, presence: true
  validates :size, presence: true
end
