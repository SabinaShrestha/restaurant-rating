class RatingsController < ApplicationController
  def index
    @ratings = Rating.order(created_at: :DESC)

  end

  def show
    @rating = Rating.find(params[:id])
  end

  def new
    @rating = Rating.new
  end

  def create
    @rating = Rating.new

    if @rating.save(rating_params)
      redirect_to ratings_path
    else
      render :new
    end
  end

  def edit
    @rating = Rating.find(params[:id])
  end

  def update
    @rating = Rating.find(params[:id])

    if @rating.update(rating_params)
      redirect_to ratings_path
    else
      render :edit
    end
  end

  def destroy
    Rating.find(params[:id]).destroy
    redirect_to ratings_path
  end



  private
  def rating_params
    params.require(:rating).permit(:title, :place, :website, :rate, :service)
  end
end
