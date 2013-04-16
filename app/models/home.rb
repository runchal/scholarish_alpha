class Home < ActiveRecord::Base
  attr_accessible :home_text, :sales_box_01_head, :sales_box_01_text, :sales_box_02_head, :sales_box_02_text, :sales_box_03_head, :sales_box_03_text

  belongs_to :user
end
