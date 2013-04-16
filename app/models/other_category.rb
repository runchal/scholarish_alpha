class OtherCategory < ActiveRecord::Base
  attr_accessible :type

  belongs_to :user
end
