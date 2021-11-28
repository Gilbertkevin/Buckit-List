class DetailsToSocialPost < ActiveRecord::Migration[6.1]
  def change
    add_column :social_posts, :url, :string
    add_column :social_posts, :item_id, :integer
  end
end
