class Post < ApplicationRecord
  has_many :posts, inverse_of: :recipe

  validates :name, presence: true, length: { maximum: 100 }
  validates :instructions, presence: true, length: { maximum: 1000 }
  validates :cooking_time, presence: true, numericality: { greater_than: 0 }
end
