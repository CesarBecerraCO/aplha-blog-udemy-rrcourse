class User < ActiveRecord::Base
  validates :username, presence: true, length: { minimum: 3, maximun: 25} 
end