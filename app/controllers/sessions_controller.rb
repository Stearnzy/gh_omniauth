class SessionsController < ApplicationController
  def create
    user = User.find_or_create_by(uid: request_hash[:uid])
    user.uid = request_hash[:uid]
    user.username = request_hash[:info][:nickname]
    user.token = request_hash[:credentials][:token]
    user.save

    session[:user_id] = user.id

    redirect_to dashboard_path
  end

  private

  def request_hash
    request.env['omniauth.auth']
  end
end