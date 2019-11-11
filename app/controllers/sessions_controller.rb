class SessionsController < ApplicationController
  def new

  end

  def index 

  end

  def create
    if params[:name].present?
      session[:name] = params[:name]
      redirect_to sessions_path
    else
      redirect_to sessions_new_path
    end
  end

  def destroy
    session.delete :name
    redirect_to sessions_new_path
  end

end