class BooksController < ApplicationController

  def create
    @book = Book.new(book_params)
    @book_user_id = current_user_id
    if @book.save
      flash[:notice] = "successfully"
      redirect_to books_path
    else
      @user = user.find(current_user.id)
      flash[:errors] = @book.errors.full_messages
      redirect_to books_path(@user)
    end
  end

  def index
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def book_params
    params.require(:book).permit(:title, :opinion)
  end
end
