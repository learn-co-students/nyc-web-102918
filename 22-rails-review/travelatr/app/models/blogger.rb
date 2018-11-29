class Blogger < ApplicationRecord
  has_many :posts

  validates :name, uniqueness: true
  validates :age, numericality: { greater_than: 0 }
  validates :bio, length: { minimum: 30 }

  def likes
    like_array = self.posts.map do |post|
      post.like_count
    end

    like_array.reduce(:+)
  end
end
