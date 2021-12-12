class CategoriesController < ApplicationController
  def create
    category = Category.new(
      id: params[:id],
      category_title: params[:category_title],
    )
    if category.save
      render json: { message: "category created successfully" }
    else
      render json: { errors: category.errors.full_message }
    end
  end
end
