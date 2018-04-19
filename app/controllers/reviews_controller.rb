class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @album = Album.find(params[:album_id])
    @review = @album.reviews.new(review_params)
    if @review.save
      flash[:notice] = "Album successfully added!"
      redirect_to album_path(@album)
    else
      flash[:alert] = "Sorry, error!"
      render :new
    end
  end

  private
    def review_params
      params.require(:review).permit(:username, :content, :rating)
    end
end
