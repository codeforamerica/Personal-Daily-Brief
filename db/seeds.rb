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
  item.save!
end

User.create(:first_name => "Erik", :last_name => "Michaels-Ober", :email => "erik@codeforamerica.org")
User.create(:first_name => "Michael", :last_name => "Evans", :email => "michael@codeforamerica.org")
User.create(:first_name => "Scott", :last_name => "Silverman", :email => "scott@codeforamerica.org")
