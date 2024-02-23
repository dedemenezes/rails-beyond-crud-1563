class Restaurant < ApplicationRecord
  validates :name, :address, presence: true
  has_many :reviews, dependent: :destroy
end
