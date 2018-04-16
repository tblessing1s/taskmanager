class Task < ApplicationRecord
  has_many :comments, dependent: :destroy
<<<<<<< HEAD
  belongs_to :employee, dependent: :destroy
  
=======
  belongs_to :employee

>>>>>>> 517ac87b0e3ebf309e92bff9916d8ecefebfcc5b
end
