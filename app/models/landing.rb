class Landing < ApplicationRecord
  validates :full_name, :email, :phone_number, presence: true
end
