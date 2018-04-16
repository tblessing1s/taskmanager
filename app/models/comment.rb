class Comment < ApplicationRecord
  belongs_to :task
  belongs_to :employee

  validates :comment, length: { minimum: 4 }
end
