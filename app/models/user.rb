class User < ActiveRecord::Base
  attr_accessible :email, :name
  has_many :posts
  
  def initialize(attributes = {})
    @name  = attributes[:name]
    @email = attributes[:email]
  end

  def formatted_email
    "#{@name} <#{@email}>"
  end
end
