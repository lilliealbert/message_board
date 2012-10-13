class Reply < ActiveRecord::Base
  attr_accessible :content, :user_id, :post_id
  belongs_to :user
  belongs_to :post
  validates_presence_of :user, :content, :post
end