class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :cars
  has_many :bookings
  # validates :username, :first_name, :last_name, :date_of_birth, presence: true
  # validates :username, :email, uniqueness: true

  validate :validate_age

  private

  def validate_age
    if date_of_birth.present? && date_of_birth > 18.years.ago
      errors.add(:date_of_birth, 'You should be over 18 years old.')
    end
  end

end
