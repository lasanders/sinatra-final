class Comment < ActiveRecord::Base
  belongs_to :event
  has_many :comments
end
