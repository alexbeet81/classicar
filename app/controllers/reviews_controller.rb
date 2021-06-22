class ReviewsController < ApplicationController
  before_action :set_car, only: [:new, :create]

  def index
    @reviews = Reviews.all

    authorize @reviews
  end

  def new
    @review = Review.new
    authorize @review
  end

  def create
    @review = Review.new(review_params)

    @review.user = current_user

    @review.car_id = @car.id

    authorize @review

    if @review.save!
      redirect_to car_path(@car)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:comment, :star)
  end

  def set_car
    @car = Car.find(params[:car_id])
  end
end
