class OrdersController < ApplicationController
  def create
    @order = Order.new

    @book = Book.find(params[:book_id])
    @order.book = @book
    @order.user = current_user

    @order.save
    redirect_to book_path(@book)
  end
end
