class Publication < ActiveRecord::Base
  attr_accessible :date, :link, :publication_description, :title
end
