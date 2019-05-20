class Restaurant < ApplicationRecord
  CATEGORIES = ['french', 'chinese', 'belgian', 'japanese', 'italian']
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: CATEGORIES }
  has_many :reviews, dependent: :destroy
end
