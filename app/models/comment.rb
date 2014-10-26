class Comment < ActiveRecord::Base
  belongs_to :dig
  belongs_to :owner, class_name: 'User'
  has_many :votes, as: :votable
  has_many :voters, through: :votes

  validates :title, :owner_id, presence: true
end
