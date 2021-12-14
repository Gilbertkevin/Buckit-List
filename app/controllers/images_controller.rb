class ImagesController < ApplicationController
  def create
    image = Image.new(
      url: params[:url],
      item_id: params[:item_id],
    )
    if image.save
      render json: { message: "Image saved successfully" }
    else
      render json: { errors: images.errors.full_message }
    end
  end

  def show
    image = Image.find_by(id: params[:id])

    render json: image.as_json
  end
end
