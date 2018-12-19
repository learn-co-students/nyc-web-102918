class Party < ApplicationRecord
  validates(:name, { uniqueness: { case_sensitive: false } })
  # validates :name, uniqueness: { case_sensitive: false }
  has_many :kids
  # has_many(:kids)
end
