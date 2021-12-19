class ItemSerializer < ActiveModel::Serializer
  attributes :id, :notes, :images, :item_title
  # has_many :notes
  # has_many :images
end
