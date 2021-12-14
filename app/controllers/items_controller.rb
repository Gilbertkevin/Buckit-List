class ItemsController < ApplicationController
  def index
    item = Item.find_by(params[:item_title])
  end

  def create
    item = Item.new(
      item_title: params[:item_title],
      category_id: params[:category_id],
    )
    if item.save
      render json: { message: "Item created successfully" }
    else
      render json: { errors: items.errors.full_message }
    end
  end

  def show
    item = Item.find_by(id: params[:id])

    render json: item.as_json
  end
end
