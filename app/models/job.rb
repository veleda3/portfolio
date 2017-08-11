class Job < ApplicationRecord
  validates :about, :client, :website, :finished_on, :picture, presence: true
end
