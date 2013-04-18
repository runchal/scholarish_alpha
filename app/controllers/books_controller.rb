class BooksController < ApplicationController

  before_filter :authenticate_user!, except: [:index, :show]

  def index
    @books = Book.all
  end

  def showall
    @books = Book.all
  end

  def new
    @book = current_user.books.new
  end

  def create
    @book = current_user.books.build(params[:book])

    if @book.save
      redirect_to books_url, notice: 'Your book was created.'
    else
      render action: "edit"
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = current_user.books.find(params[:id])
  end

  def update
    @book = current_user.books.find(params[:id])
  
    if @book.update_attributes(params[:book])
      redirect_to books_url, notice: 'Your book was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @book = current_user.books.find(params[:id])
    @book.destroy

    redirect_to books_url
  end

end
