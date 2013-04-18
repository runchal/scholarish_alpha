class OtherCategoriesController < ApplicationController

  def index
    @other_categories = OtherCategory.all
  end

  def new
    @other_category = current_user.other_categories.new
  end

  def create
    @other_category = current_user.other_categories.build(params[:other_category])

    if @other_category.save
      redirect_to other_categories_url, notice: 'This worked.'
    else
      render action: "edit"
    end
  end

  def show
    @other_category = OtherCategory.find(params[:id])
  end

  def edit
    @other_category = current_user.other_categories.find(params[:id])
  end

  def update
    @other_category = current_user.other_categories.find(params[:id])

    if other_category.update_attributes(params[:other_category])
      redirect_to other_categories_url, notice: 'This was updated properly'
    else
      render action "edit"
    end
  end

  def destroy
    @other_category = current_user.other_categories.find(params[:id])
    @other_category.destroy

    redirect_to other_categories_url
  end

end
