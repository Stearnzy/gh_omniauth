class SessionsController < ApplicationController
  def create
    user = User.find_or_create_by(uid: request_hash[:uid]) do |user|
      user.username = request_hash[:info][:nickname]
      user.token = request_hash[:credentials][:token]
      user.save
    end

    session[:user_id] = user.id

    redirect_to dashboard_path
  end

  private

  def request_hash
    request.env['omniauth.auth']
  end
end