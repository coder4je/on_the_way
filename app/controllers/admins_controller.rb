class AdminsController < ApplicationController
  skip_before_action :confirm_authentication

  def show 
    if current_admin
      render json: current_admin, status: :ok
    else 
      render json: { error: "No active session" }, status: :unauthorized
    end
  end

  def create 
    admin = Admin.new(admin_params)
    if admin.save 
      session[:admin_id] = admin.id
      render json: admin, status: :created
    else
      render json: admin.errors, status: :unprocessable_entity
    end
  end

  private
  def admin_params
    params.permit(:email, :password, :password_confirmation)
  end
end
