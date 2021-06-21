class Event < ApplicationRecord
  validates_presence_of :artist, :venue, :name
  enum featured: {
    not_featured: 0,
    featured_for_logged_in: 1,
    featured_for_logged_out: 2
  }

  belongs_to :artist
  belongs_to :venue
end
