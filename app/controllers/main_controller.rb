class MainController < ApplicationController
  def index
    # TODO: Add authentication logic
    @user = User.first
    @items = Item.where("occurs_at < ?", 7.days.from_now).order(:occurs_at)
    @photos = Flickr.new(:key => ENV['FLICKR_KEY'], :secret => ENV['FLICKR_SECRET']).photos.search(:text => 'congress', :sort => 'interestingness-desc', :per_page => @items.size)
    @items.each_with_index do |item, index|
      item.photo = @photos[index].url(:square)
    end
    @topics = Topic.all
  end
end
