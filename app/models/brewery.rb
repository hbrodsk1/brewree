class Brewery < ApplicationRecord
  validates :name, presence: true
  validates :obdb_id, uniqueness: true

  has_many :reviews
end
