class SessionsController < ApplicationController
  def new
    @user_data = serialize_user_data
  end

  def create
    user = User.from_omniauth(request.env['omniauth.auth'])

    return unless user.valid?

    session[:user_id] = user.id

    GithubDataFetchingService.new(current_user).call

    redirect_to request.env['omniauth.origin']
  end

  def destroy
    reset_session

    redirect_to request.referer
  end

  private

  def serialize_user_data
    return if current_user.blank?

    {
      user: current_user.as_json(only: [:profile_name, :avatar_url]),
      repos: current_user.repos.as_json(only: [:name, :url, :description])
    }
  end
end
