class Item < ApplicationRecord
  belongs_to :category
  has_many :notes
  has_many :social_posts
  has_many :images
end
