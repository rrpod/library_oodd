class SuggestBookController < ApplicationController
  before_action :require_admin, only: [:index , :edit, :destroy, :show]
  before_action :require_user, only: [:new, :create, :index]


  def new
    @suggest=SuggestBook.new
  end


  def create
    suggest = SuggestBook.find_by_isbn(params[:suggest][:isbn])
    if suggest
      flash[:warn] = "A book is already present with this ISBN"
      redirect_to suggest_path
      return
    end
    @suggest = SuggestBook.new(suggest_params)
    if @suggest.save
      flash[:notice] = "Book Successfully added"
      redirect_to suggest_path
    else
      flash[:warn] = "Server faced an internal error. Could not save book"
      redirect_to suggest_path
    end
  end

  def index
    @suggest = SuggestBook.all
  end


  def destroy
    @suggest = SuggestBook.find(params[:id])
      if @suggest
        if @suggest.destroy
          flash[:notice] = "Book suggestion was deleted successfully"
        else
          flash[:warn] = "Could not delete book suggestion"
        end
      else
        flash[:warn] = "Did not find suggestion to delete"
      end
    redirect_to index_suggest_path
  end


  def edit
    @suggest = SuggestBook.find(params[:id])
  end

  def show
    @suggest = SuggestBook.find(params[:id])
    @book = Book.create(title: @suggest.title ,author: @suggest.author, description: @suggest.description, isbn: @suggest.isbn, status: "available")
    puts "fuckyou"
    @suggest.destroy
    redirect_to books_path

  end


  private
  def suggest_params
    params.require(:suggest).permit(:isbn, :title, :description, :author)
  end

end
