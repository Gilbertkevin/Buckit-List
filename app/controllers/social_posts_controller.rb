class SocialPostsController < ApplicationController
  def create
    post = SocialPost.new(
      url: params[:url],
      item_id: params[:item_id],
    )
    if post.save
      render json: { message: "Post saved successfully" }
    else
      render json: { errors: posts.errors.full_message }
    end
  end

  def show
    post = SocialPost.find_by(id: params[:id])

    render json: post.as_json
  end
end
