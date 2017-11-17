class Weed < ApplicationRecord

  validates :name, :price, presence: true

  def self.search(search)
    where("name ILIKE ? OR strain ILIKE ? OR species ILIKE ?", "%#{search}", "%#{search}", "%#{search}")
  end
end
