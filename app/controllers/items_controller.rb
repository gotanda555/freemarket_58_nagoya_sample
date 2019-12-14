class ItemsController < ApplicationController

def index
  @items = Item.all
end

def detail
  @item = Item.find(params[:id])
end

def new
end

def check
end



end
