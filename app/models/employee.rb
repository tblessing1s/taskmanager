class Employee < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :tasks

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_secure_password
  validates :name, presence: true
  validates :email, presence: true,
                  format: /\A\S+@\S+\z/,
                  uniqueness: { case_sensitive: false }
  has_many :tasks, dependent: :destroy

  def self.authenticate(email, password)
    employee = Employee.find_by(email: email)
    employee && employee.authenticate(password)
  end
end
