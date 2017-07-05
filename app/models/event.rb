class Event < ApplicationRecord
  belongs_to :user

  validates :name, presence: true, length: { maximum: 60 }
  validates :location, presence: true
  validates :price, presence: true
  validates :capacity, presence: true
  validates :description, presence: true, length: { maximum: 500 }
  validates :starts_at, presence: true
  validates :ends_at, presence: true

  has_and_belongs_to_many :categories

  def cheapevent?
    price < 30
  end

  def self.order_by_price
  order :price
  end

end
