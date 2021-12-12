class Item < ApplicationRecord
  belongs_to :categories
  has_many :notes
  has_many :social_posts
  has_many :images
end
