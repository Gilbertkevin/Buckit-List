class ItemsController < ApplicationController
  def index
    items = Item.all

    render json: items.as_json
  end

  def create
    item = Item.new(
      item_title: params[:title],
      category_id: params[:category_id],
    )
    if item.save
      note = Note.new(
        description: params[:note],
        item_id: item.id,
      )
      note.save

      image = Image.new(
        url: params[:image],
        item_id: item.id,
      )
      image.save

      render json: { message: "Item created successfully" }
    else
      render json: { errors: item.errors.full_message }
    end
  end

  def show
    item = current_user.
      item = Item.all
    render json: item.as_json
  end
end
