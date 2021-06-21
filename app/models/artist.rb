class Artist < ApplicationRecord
  validates_uniqueness_of :name
  after_save :touch_events
  has_many :events

  private

  def touch_events
    events.update_all(updated_at: DateTime.now)
  end
end
