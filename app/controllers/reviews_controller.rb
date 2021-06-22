class ReviewsController < ApplicationController
  before_action :set_car, only: [:new, :create]
  before_action :set_review, only: [:edit, :update, :destroy]

  def new
    @review = Review.new
    authorize @review
  end

  def create
    @review = Review.new(review_params)

    @review.user = current_user

    @review.car_id = @car.id

    authorize @review

    if @review.save
      redirect_to car_path(@car)
    else
      render :new
    end
  end

  def edit; end

  def update
    authorize @review

    if @review.update(review_params)
      redirect_to review_path(@review)
    else
      render :edit
    end
  end

  def destroy
    @review.destroy

    @car = @review.car_id

    # Currently redirects to cars_path (index of all the cars)
    redirect_to cars_path(@car)
  end

  private

  def review_params
    params.require(:review).permit(:comment, :star)
  end

  def set_review
    @review = Review.find(params[:id])
  end

  def set_car
    @car = Car.find(params[:car_id])
  end
end
