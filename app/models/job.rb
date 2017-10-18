class Job < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  validates :about, :client, :website, :finished_on, :picture, presence: true

  scope :most_recent, -> { order(id: :desc)}

  def should_generate_new_friendly_id?
    title_changed? || slug.blank?
  end

  def published_date
    "#{created_at.strftime('%-b %-d, %Y')}"
  end

end
