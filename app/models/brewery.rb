class Brewery < ApplicationRecord
  validates_presence_of :name
  validates :obdb_id, uniqueness: true

  has_many :reviews
end
