class Quote < ActiveRecord::Base
  has_many :votes
  has_many :voters, through: :votes

  def vote_count
    votes.count
  end
end
