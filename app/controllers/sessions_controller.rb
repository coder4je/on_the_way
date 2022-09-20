class SessionController < ApplicationController
  skip_before_action :confirm_authentication, only: [:create]
  
  def create
  
    if params[:admin]
      admin = Admin.find_by(email: params[:email])
      if user&.authenticate(params[:password])
        session[:admin_id] = admin.id
        render json: user, status: :ok
        # redirect_to 
      else
        render json: {error: 'invalid credentials'}, status: :unauthorized
        # render 'admin/login'
      end
    elsif params[:driver]
      driver = Driver.find_by(email: params[:email])
      if driver&.authenticate(params[:password])
        session[:driver_id] = driver.id
        render json: driver, status: :ok
      else
        render json: {error: 'invalid credentials'}, status: :unauthorized
    end

    elsif params[:vender]
      vender = Vender.find_by(email: params[:email])
      if vender&.authenticate(params[:password])
        session[:vender_id] = vender.id
        render json: vender, status: :ok
      else
        render json: {error: 'invalid credentials'}, status: :unauthorized
      end

    elsif params[:receiver]
      receiver = Receiver.find_by(email: params[:email])
      if receiver&.authenticate(params[:password])
        session[:receiver_id] = receiver.id
        render json: receiver, status: :ok
      else
        render json: {error: 'invalid credentials'}, status: :unauthorized
      end
    end
  end

  def destroy
    if params[:admin]
      session.delete :admin_id
      head :no_content
    elsif params[:driver]
      session.delete :driver_id
      head :no_content
    elsif params[:vender]
      session.delete :vender_id
      head :no_content
    elsif params[:receiver]
      session.delete :receiver_id
      head :no_content
    end
  end
end

