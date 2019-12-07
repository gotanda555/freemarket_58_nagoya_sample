class ItemsController < ApplicationController

def index
  @item = Item.find(1)
  @images = @item.images
end

def new
end

def check
end



end
