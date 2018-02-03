class Comment < ActiveRecord::Base
  has_many :event_comments
  has_many :events, through: :event_comments
  has_many :comments, through: :users
end
