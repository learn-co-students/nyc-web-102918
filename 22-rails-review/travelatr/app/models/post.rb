class Post < ApplicationRecord
  belongs_to :blogger

  validates :title, presence: true
  validates :content, length: { minimum: 100 }
  validates :like_count, presence: true, numericality: { greater_than: 0 }
end
