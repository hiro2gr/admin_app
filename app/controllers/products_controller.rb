class ProductsController < ApplicationController
  def new
  end

  def create
    @item = Item.new(name: params[:name])
    @item.save
    redirect_to controller: :products, action: :list
  end

  def list
    @items = Item.all
  end

  def destroy
    @item = Item.find_by(id: params[:id])
    @item.destroy
    redirect_to controller: :products, action: :list
  end

  def edit
    @item = Item.find_by(id: params[:id])
  end

  def update
    @item = Item.find_by(id: params[:id])
    @item.update_columns(name: params[:name])
    redirect_to controller: :products, action: :list
  end
end
