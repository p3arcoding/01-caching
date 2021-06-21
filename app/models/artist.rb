class Artist < ApplicationRecord
  validates_uniqueness_of :name
end
