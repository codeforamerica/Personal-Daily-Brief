require 'congress'

topics = ['Economy', 'Elections', 'Environment', 'Human Rights', 'Jobs', 'Net Neutrality'].map do |topic|
  Topic.create(:name => topic)
end

Congress.key = ENV['CONGRESS_KEY']

Congress.committee_hearings.committee_hearings.each do |committee_hearing|
  item = Item.new
  item.occurs_at = Time.parse([committee_hearing.legislative_day, committee_hearing.time_of_day, 'EST'].join(' '))
  item.title = committee_hearing.committee.name
  item.description = committee_hearing.description
  item.room = committee_hearing.room
  item.address = '1 First Street NE'
  item.city = 'Washington'
  item.state = 'DC'
  item.country = 'USA'
  item.postal_code = '20004'
  item.topics = [Topic.random]
  item.geocode
  item.save!
end

erik = User.new
erik.first_name = "Erik"
erik.last_name = "Michaels-Ober"
erik.email = "erik@codeforamerica.org"
erik.address = '139 Townsend Street'
erik.city = 'San Francisco'
erik.state = 'CA'
erik.country = 'USA'
erik.geocode
erik.save!

michael = User.new
michael.first_name = "Michael"
michael.last_name = "Evans"
michael.email = "michael@codeforamerica.org"
michael.address = '139 Townsend Street'
michael.city = 'San Francisco'
michael.state = 'CA'
michael.country = 'USA'
michael.geocode
michael.save!

scott = User.new
scott.first_name = "Scott"
scott.last_name = "Silverman"
scott.email = "scott@codeforamerica.org"
scott.save!
scott.address = '139 Townsend Street'
scott.city = 'San Francisco'
scott.state = 'CA'
scott.country = 'USA'
scott.geocode
scott.save!
