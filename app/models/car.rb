class Car < ApplicationRecord
  belongs_to :user
  validates :title, :price, presence: true
  validates :description, length: { minimum: 8 }
  # validates :availability, inclusion: [true, false]

  has_one_attached :photo
end
