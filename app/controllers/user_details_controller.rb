class UserDetailsController < ApplicationController

before_filter :authenticate_user!, except: [:show]

  def new
    @user_detail = current_user.build_user_detail
  end

  def create
    @user_detail = current_user.build_user_detail(params[:user_detail])

    if @user_detail.save
      redirect_to user_detail_url, notice: 'Your user details were created.'
    else
      render action: "edit"
    end
  end

  def show
    @user_detail = current_user.user_detail

    unless @user_detail
      redirect_to new_user_detail_path
    end
  end

  def edit
    @user_detail = current_user.user_detail
  end

  def update
    @user_detail = current_user.user_detail
    
    if @user_detail.update_attributes(params[:user_detail])
      redirect_to user_detail_url, notice: 'Your user details were successfully updated.'
    else
      render action: "edit"
    end
  end

end
