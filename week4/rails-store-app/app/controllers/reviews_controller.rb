class ReviewsController < ApplicationController
  
  def create
    @product = Product.find(params[:product_id])
    @review = Review.new(review_params)
    @review.product = @product
    @review.user = current_user
    if @review.save
      redirect_to product_path(@product)
    else
      render 'products/show'
    end
  end
    
  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to product_path(params[:product_id])
  end

  private
  
  def review_params
    params.require(:review).permit(:title, :content)
  end
end
