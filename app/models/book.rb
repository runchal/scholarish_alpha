class Book < ActiveRecord::Base
  attr_accessible :description, :link, :stubtitle, :title

  belongs_to :user
end
