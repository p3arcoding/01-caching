class Announcement < ApplicationRecord
  TYPES = %w[new fix update].freeze

  after_initialize :set

  validates :announcement_type, :description, :name, :published_at, presence: true
  validates :announcement_type, inclusion: { in: TYPES }

  def set_defaults
    self.published_at      ||= Time.zone.now
    self.announcement_type ||= TYPES.first
  end
end
