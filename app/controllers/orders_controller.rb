class OrdersController < ApplicationController
  def new
    @book = Book.find(params[:book_id])
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)

    @book = Book.find(params[:book_id])
    @order.book = @book
    @order.user = current_user

    if @order.save
      redirect_to book_path(@book)
    else
      render :new
    end
  end

  private

  def order_params
    params.require(:order).permit(:name, :card_number, :card_code, :card_expiration)
  end
end
