class OtherCategoryObjectsController < ApplicationController

  def index
    @other_categories = OtherCategory.find(params[:other_category_id])
    @other_category_objects = OtherCategoryObject.all
  end

  def new
    @other_category = OtherCategory.find(params[:other_category_id])
    @other_category_object = OtherCategoryObject.new
  end

  def create
    @other_category = OtherCategory.find(params[:other_category_id])
    @other_category_object = @other_category.other_category_object.build(params[:other_category_oject])

    if @other_category.save
      redirect_to @other_categories_url, notice: 'Nice new thing dude'
    else
      action: "new"
    end
  end

  def show
    @other_category = OtherCategory.find(params[:other_category_id])
    @other_category_object = @other_category.other_category_obects.find(params[:id])
  end

  def edit
    @other_category = OtherCategory.find(params[:other_category_id])
    @other_category_object = @other_category.other_category_obects.find(params[:id])
  end

  def update
    @other_category = OtherCategory.find(params[:other_category_id])
    @other_category_object = @other_category.other_category_obects.find(params[:id])

    if @other_category_object.update_attributes(params[:other_category_oject])
      redirect_to other_category_objects_url, notice: 'Updated, slick.'
    else
      render action: "edit"
    end
  end

  def destroy
    @other_category = OtherCategory.find(params[:other_category_id])
    @other_category_object = @other_category.other_category_objects.find(params[:id])
    @other_category_object.destroy

    redirect_to other_category_objects_url
  end

end
