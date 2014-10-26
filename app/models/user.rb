class User < ActiveRecord::Base
  has_many :digs, foreign_key: :owner_id
  has_many :comments, foreign_key: :owner_id
  has_many :votes, foreign_key: :voter_id
end
