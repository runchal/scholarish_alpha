class PublicationsController < ApplicationController

  before_filter :authenticate_user!, except: [:index, :show]

  def index
    @publications = Publication.all
  end

  def showall
    @publications = Publication.all
  end

  def new
    @publication = current_user.publications.new
  end

  def create
    @publication = current_user.publications.build(params[:publication])

    respond_to do |format|
      if @publication.save
        format.html { redirect_to publications_url, notice: 'Your publication was created.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def show
    @publication = Publication.find(params[:id])
  end

  def edit
    @publication = current_user.publications.find(params[:id])
  end

  def update
    @publication = current_user.publications.find(params[:id])
  
    if @publication.update_attributes(params[:publication])
      redirect_to publications_url, notice: 'Your publication was successfully updated.'
    else
      render action: "edit"
    end
  end

end
