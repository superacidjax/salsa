class ProductsController < ApplicationController

  expose(:products)
  expose(:product)

  def create
    if product.save
      flash[:success] = "Product Created!"
      redirect_to(product)
    else
      render :new
    end
  end

  def update
    if product.update_attributes(params[:product])
      flash[:success] = "Product Updated!"
      redirect_to(product)
    else
      render :edit
    end
  end

  def destroy
    if product.destroy
      flash[:success] = "Product Destroyed!"
      redirect_to products_path
    else
      flash[:failure] = "Product could not be deleted"
      render :edit
    end
  end
end
