class User < ActiveRecord::Base
   attr_accessible :name, :email
   validates :name, :email, :uniqueness => true, :presence => true
end
