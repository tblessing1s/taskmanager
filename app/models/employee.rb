class Employee < ApplicationRecord
  has_secure_password
  validates :name, presence: true
  validates :email, presence: true,
                  format: /\A\S+@\S+\z/,
                  uniqueness: { case_sensitive: false }

  def self.authenticate(email, password)
    employee = Employee.find_by(email: email)
    employee && employee.authenticate(password)
  end
end
