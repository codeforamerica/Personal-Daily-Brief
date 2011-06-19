class MainController < ApplicationController
  def index
    @items = Item.where("occurs_at < ?", 7.days.from_now)
  end
end
