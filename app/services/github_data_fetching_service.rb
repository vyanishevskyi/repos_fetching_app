# frozen_string_literal: true

class GithubDataFetchingService
  BASE_URL = 'https://api.github.com/users'

  def initialize(user)
    @user = user
  end

  def call
    response = HTTP.get("#{BASE_URL}/#{@user.username}/repos")

    user_repos_json = JSON.parse(response)

    store_user_repos(user_repos_json)
  end

  private

  def store_user_repos(user_repos_json)
    user_repos_json.each do |repo|
      @user.repos.find_or_create_by(
        id_on_platform: repo['id'],
        name: repo['name'],
        url: repo['html_url'],
        description: repo['description']
      )
    end
  end
end
