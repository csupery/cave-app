class Stock < ApplicationRecord
  belongs_to :vintage
  enum size: SIZE
end
