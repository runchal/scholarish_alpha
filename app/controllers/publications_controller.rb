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

      if @publication.save
        redirect_to publications_url, notice: 'Your publication was created.'
      else
        render action: "edit"
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

  def destroy
    @publication = current_user.publications.find(params[:id])
    @publication.destroy

    redirect_to publications_url
  end

end
