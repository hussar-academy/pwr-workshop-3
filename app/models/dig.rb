class Dig < ActiveRecord::Base
  belongs_to :owner, class_name: 'User'
  has_many :votes, as: :votable
  has_many :voters, through: :votes
end
