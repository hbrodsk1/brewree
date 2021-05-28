class Review < ApplicationRecord
  validates_presence_of :would_recommend

  belongs_to :brewery
end
