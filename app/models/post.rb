class Post < ActiveRecord::Base
  attr_accessible :content, :title, :user_id
  belongs_to :user
  validates_presence_of :user, :title, :content
  has_many :replies
end
