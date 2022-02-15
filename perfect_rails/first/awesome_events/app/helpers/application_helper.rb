module ApplicationHelper
  def url_for_github(user)
    "https://github.com/s#{user.name}"
  end
end
