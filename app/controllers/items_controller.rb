class ItemsController < ApplicationController

  before_action :move_to_login, only: :check

  def index
    @items = Item.all
  end
  
  def detail
    @items = Item.all
    @item = Item.find(params[:id])
    @category = Category.find(1)
  end

  def create
    
  
  end
  
  def new
      @category_parent = ["---"]
      Category.where(ancestry: nil).each do |parent|
        @category_parent << parent.name
      end
  end
  
  def check
    @items = Item.all
    @item = Item.find(params[:id])
  end
  
  def move_to_login
    redirect_to new_user_session_path unless user_signed_in?
  end
  
  end