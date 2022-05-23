class Car < ApplicationRecord
  belongs_to :user
  validates :title, :price, presence: true
  validates :description, length: { minimum: 20 }
  validates :availability, inclusion: [true, false]
end
