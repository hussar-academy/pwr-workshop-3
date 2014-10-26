class User < ActiveRecord::Base
  has_many :digs, foreign_key: :owner_id
end
