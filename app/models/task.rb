class Task < ApplicationRecord
  validates :name, length: { minimum: 3 }
  validates :description, length: { minimum: 7 }
  enum :importance => [:high, :medium, :low]
  belongs_to :user

end
