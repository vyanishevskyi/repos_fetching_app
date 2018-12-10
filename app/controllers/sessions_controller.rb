class SessionsController < ApplicationController
  def new; end

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
end
