class MainController < ApplicationController
  def index
    @items = Item.where("occurs_at < ?", 7.days.from_now)
    @topics = Topic.all
  end
end
