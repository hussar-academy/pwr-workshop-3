class Dig < ActiveRecord::Base
  belongs_to :owner, class_name: 'User'
  has_many :votes, as: :votable, dependent: :destroy
  has_many :voters, through: :votes
  has_many :comments, dependent: :destroy

  validates :title, :owner_id, presence: true
end

