require 'faker'

3.times do |i|
  user = User.create!(username: "user#{i}", password: "123456")

  2.times do
    user.authored_quotes.create!(text: Faker::StarWars.quote)
  end
end

User.all.each do |user|
  user.voted_on_quotes << Quote.all.sample
end

