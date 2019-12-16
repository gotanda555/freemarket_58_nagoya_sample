class ItemsController < ApplicationController

  def index
    @items = Item.all
  end
  
  def detail
    @items = Item.all
    @item = Item.find(params[:id])
  end
  
  def new
  end
  
  def check
  end
  
  
  
  end