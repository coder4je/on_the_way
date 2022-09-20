class ApplicationController < ActionController::API
  include ActionController::Cookies
  before_action :confirm_authentication


  private 

  def current_admin 
    @current_admin ||= session[:admin_id] && Admin.find_by_id(session[:admin_id])
  end

  def current_driver
    @current_driver ||= session[:driver_id] && Driver.find_by_id(session[:driver_id])
  end

  def current_vender
    @current_vender ||= session[:vender_id] && Vender.find_by_id(session[:vender_id])
  end

  def current_receiver
    @current_receiver ||= session[:receiver_id] && Receiver.find_by_id(session[:receiver_id])
  end

  def confirm_authentication
    render json: { error: "You must be logged in first."}, status: :unauthorized unless current_admin || current_driver || current_receiver || current_vender
  end
end
