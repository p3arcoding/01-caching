class Venue < ApplicationRecord
  validates_presence_of :address
  validates_uniqueness_of :name
end
