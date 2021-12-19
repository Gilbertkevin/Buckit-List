class CategorySerializer < ActiveModel::Serializer
  attributes :id, :category_title
  has_many :items
end
