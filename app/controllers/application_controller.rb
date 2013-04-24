class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :get_other_category_title_one, :get_first_name, :get_last_name
  
  def get_other_category_title_one
    @other_category_title_one = OtherCategory.first.other_category_type
  end

  def get_first_name
    @first_name = UserDetail.last.first_name
  end

  def get_last_name
    @last_name = UserDetail.last.last_name
  end

end
