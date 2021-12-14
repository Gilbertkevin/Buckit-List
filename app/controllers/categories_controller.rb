class CategoriesController < ApplicationController
  def create
    category = Category.new(
      user_id: params[:user_id],
      category_title: params[:category_title],
    )
    if category.save
      render json: { message: "category created successfully" }
    else
      render json: { errors: category.errors.full_message }
    end
  end

  def show
    category = Category.find_by(id: params[:id])

    render json: category.as_json
  end
end
