class Employee < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :tasks

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_secure_password
  validates :name, presence: true
  validates :time, numericality: { greater_than: 0 }
  validates :email, presence: true,
                  format: /\A\S+@\S+\z/,
                  uniqueness: { case_sensitive: false }

  def self.authenticate(email, password)
    employee = Employee.find_by(email: email)
    employee && employee.authenticate(password)
  end
  def self.workload(id)
    @employee = Employee.find(id)
    total = @employee.tasks.pluck(:lot)
    total.inject(0){|sum,x| sum + x }
  end
  def self.percentwork(id)
    @employee = Employee.find(id)
    time = @employee.time
    workload = self.workload(id)
    (workload.to_f / time.to_f) * 100
  end
end
