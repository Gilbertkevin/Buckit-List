class ItemsController < ApplicationController
  def index
    item = Item.find_by(params[:item_title])
  end

  def create
    item = Item.new(
      item_title: params[:item_title],
      category_id: params[:category_id],
    )
    item.save!
  end

  def show
    item = Item.find_by(id: params[:id])
  end

  def update
  end

  def destroy
  end
end
