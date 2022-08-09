class DiscountsController < ApplicationController

  def index
    @discounts = Discount.all
  end

  def new

  end

  def create
    Discount.create!(precent: params[:precent],
                     amount: params[:amount])
    flash.notice = 'Discount Has Been Created!'
    redirect_to "/discounts"
  end

  def destroy
    @discount = Discount.find(params[:id])
    @discount.destroy
    redirect_to '/discounts'
  end

  

end
