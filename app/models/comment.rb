class Comment < ActiveRecord::Base
  attr_accessible :text, :court_id, :user_id
  belongs_to :court
  belongs_to :user
end
