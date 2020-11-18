class Company < ApplicationRecord
  # belongs_to :student
  has_one :cash_management
  validates :name, presence: true
end
