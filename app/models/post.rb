class Post < ActiveRecord::Base
  attr_accessible :body, :title, :user_id
  belongs_to :user
  
  validates :content, :length => { :maximum => 2000 }
  
end
