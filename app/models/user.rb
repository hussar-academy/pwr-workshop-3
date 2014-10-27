class User < ActiveRecord::Base
  has_many :digs,     foreign_key: :owner_id, dependent: :destroy
  has_many :comments, foreign_key: :owner_id, dependent: :destroy
  has_many :votes,    foreign_key: :voter_id, dependent: :destroy

  validates :email, presence: true, uniqueness: true, email: true
end
