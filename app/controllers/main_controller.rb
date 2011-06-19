class MainController < ApplicationController
  def index
    # TODO: Add authentication logic
    @user = User.first
    @items = Item.where("occurs_at < ?", 7.days.from_now).order(:occurs_at)
    @topics = Topic.all
  end
end
