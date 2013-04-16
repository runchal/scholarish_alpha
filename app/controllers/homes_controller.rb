class HomesController < ApplicationController

before_filter :authenticate_user!, except: [:index, :show]

  def index
    @homes = Home.all
  end

  def showall
    @homes = Home.all
  end



  def new
    @home = current_user.homes.new
  end

  def create
    @home = current_user.homes.build(params[:home])

    respond_to do |format|
      if @home.save
        format.html { redirect_to homes_url, notice: 'Your homepage was created.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def show
    @home = Home.find(params[:id])
  end

  def edit
    @home = current_user.homes.find(params[:id])
  end

  def update
    @home = current_user.homes.find(params[:id])

    respond_to do |format|
      if @home.update_attributes(params[:home])
        format.html { redirect_to homes_url, notice: 'Your homepage was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

end
