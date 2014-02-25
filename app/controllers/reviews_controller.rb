class ReviewsController < ApplicationController

  before_filter :ensure_logged_in, except: [:show]
  before_filter :load_product

  def show
    @review = Review.find(params[:id])
  end

  def create
    @review = @product.reviews.build(review_params)
    @review.user_id = current_user.id

    respond_to do |format|
      if @review.save
        format.html {redirect_to product_path(@product), notice: 'Review created successfully'}
        format.js {}
      else
        format.html { render product_path(@product), alert: 'Some sort of error occured' }
        format.js {}
      end
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
  end

  private

  def review_params
    params.require(:review).permit(:comment, :product_id)
  end

  def load_product
    @product = Product.find(params[:product_id])
    
  end
end
