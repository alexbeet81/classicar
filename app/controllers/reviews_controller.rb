class ReviewsController < ApplicationController
  before_action :set_car, only: [:new, :create]
  before_action :set_review, only: [:edit, :update, :destroy]
  before_action :authorize_review, only: [:edit, :update, :destroy]
  before_action :set_car_id, only: [:update, :destroy]

  def new
    @review = Review.new

    authorize @review
  end

  def create
    @review = Review.new(review_params)

    @review.user = current_user

    authorize @review

    @review.car_id = @car.id

    if @review.save
      redirect_to car_path(@car)
    else
      render :new
    end
  end

  def edit; end

  def update
    if @review.update(review_params)
      redirect_to car_path(@car)
    else
      render :edit
    end
  end

  def destroy
    @review.destroy

    redirect_to car_path(@car)
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

  def authorize_review
    authorize @review
  end

  def set_car_id
    @car = @review.car_id
  end
end
