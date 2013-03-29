class Admin < ActiveRecord::Base
  attr_accessible :password, :username
    validates :username, :password , :presence => {:message => ' cannot be blank'}
end
