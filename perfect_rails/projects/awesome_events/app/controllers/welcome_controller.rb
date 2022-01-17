class WelcomeController < ApplicationController
  skip_before_action :authenticate
  def index
    # ?は第2引数で指定した値が入れ替えられる
    @events = Event.where("start_at < ?", Time.zone.now).order(:start_at)
  end
end
