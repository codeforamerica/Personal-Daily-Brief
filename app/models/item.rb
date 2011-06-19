class Item < ActiveRecord::Base
  include Geokit::Geocoders

  has_many :item_topics, :class_name => 'ItemTopic'
  has_many :topics, :through => :item_topics

  def geocode
    self.lat, self.lng = MultiGeocoder.geocode([address, city, state, postal_code, country].join(' ')).ll.split(',').each{|s| s.to_f}
  end
end
