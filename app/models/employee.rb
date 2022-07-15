class Employee < ApplicationRecord
  has_secure_password
  belongs_to :department
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, uniqueness: true
end
