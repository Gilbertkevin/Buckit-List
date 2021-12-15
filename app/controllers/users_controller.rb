class UsersController < ApplicationController
  def create
    user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
    )
    if user.save!
      render json: { message: "User created successfully" }
    else
      render json: { errors: user.errors.full_message }, status: :bad_request
    end
  end

  def destroy
    user = User.find_by(id: params[:id])
    user.destroy

    render json: { message: "Your account has been removed." }
  end
end
