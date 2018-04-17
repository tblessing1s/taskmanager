class Task < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :employee

  def self.completed
    Task.where(:completed => true).order("updated_at desc").take(5)
  end
  def self.current
    Task.where('due = ?', Date.current).order("title desc").take(5)
  end
  def self.upcoming
    Task.where('due >= ?', Date.current).order("due desc").take(5)
  end
end
