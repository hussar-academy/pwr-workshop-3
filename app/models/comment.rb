class Comment < ActiveRecord::Base
  belongs_to :dig
  belongs_to :owner, class_name: 'User'
end
