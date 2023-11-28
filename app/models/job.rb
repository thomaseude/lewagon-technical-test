class Job < ApplicationRecord
  belongs_to :user
  has_many :applies

  enum status: [:draft, :open, :closed]

  before_save :set_opened_at, if: :open?
  before_save :set_closed_at, if: :closed?

  def set_opened_at
    self.opened_at ||= Time.zone.now
  end

  def set_closed_at
    self.closed_at ||= Time.zone.now
  end
end
