require 'faker'
 #Creation City
100.times do 
  City.create!(name: Faker::Nation.capital_city, zip_code: "83520")

end

#Creation User
300.times do |user|
    User.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name, description: Faker::Lorem.sentence(word_count: 12), email: Faker::Internet.email, age: Faker::Number.number(digits: 2), city_id: City.ids.sample)
end

#Creation Gossip
200.times do 
    Gossip.create!(title: Faker::Lorem.characters(number: 7), content: Faker::Lorem.sentence(word_count: 3),user_id: User.ids.sample, created_at: Faker::Date.between(from: '2014-09-23', to: '2014-09-25') ) 
end


#Creation Tag
42.times do
  Tag.create!(title: Faker::Lorem.word)
end


#Creation GossipTag
400.times do 
    GossipTag.create!(gossip_id: Gossip.ids.sample, tag_id: Tag.ids.sample)
  end


#Creation Private Message
300.times do 
  n = rand(34..102)
    PrivateMessage.create!(content: Faker::Lorem.sentence(word_count: n), sender_id: User.ids.sample)
  end

#Creation PMUSER (table de relation entre PM et USER)
175.times do
 PmUser.create!(recipient_id: User.ids.sample, private_message_id: User.ids.sample)

end

200.times do 
  Comment.create!(content: Faker::Lorem.sentence(word_count: 6), user_id: User.ids.sample, gossip_id: Gossip.ids.sample )
end