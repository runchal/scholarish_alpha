class UserDetail < ActiveRecord::Base
  attr_accessible :bio, :birthday, :first_name, :last_name
end
