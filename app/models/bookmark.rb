class Bookmark < ActiveRecord::Base
  belongs_to :topics
  belongs_to :user
end
