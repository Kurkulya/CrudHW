class Task < ApplicationRecord
  enum :importance => [:high, :medium, :low]
  belongs_to :user

end
