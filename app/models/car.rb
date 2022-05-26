class Car < ApplicationRecord
  belongs_to :user
  validates :title, :price, presence: true
  validates :description, length: { minimum: 8 }
  # validates :availability, inclusion: [true, false]
  has_many :bookings, dependent: :destroy
  has_one_attached :photo
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
