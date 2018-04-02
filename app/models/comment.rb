class Comment < ApplicationRecord
  belongs_to :task

  validates :name, presence: true
  validates :comment, length: { minimum: 4 }
end
