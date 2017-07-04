class Event < ApplicationRecord
  belongs_to :user


  validates :name, presence: true, length: { maximum: 60 }
  validates :location, presence: true
  validates :price, presence: true
  validates :capacity, presence: true
  validates :description, presence: true, length: { maximum: 500 }
end
