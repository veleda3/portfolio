class Question < ApplicationRecord
  validates :full_name, :email, :message, presence: true

  
end
