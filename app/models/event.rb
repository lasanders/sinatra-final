class Event < ActiveRecord::Base
  belongs_to :user
  has_many :event_comments
  has_many :events, through: :event_comments
end
