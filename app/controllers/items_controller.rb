class ItemsController < ApplicationController

  before_action :move_to_login, only: [:new, :check]

  def index
    @item = Item.new
    @items = Item.all
    @ladies = Category.find(1)
    @ladies_grandchild = @ladies.indirects
    @men = Category.find(219)
    @men_grandchild = @men.indirects
  end

  def get_category_children
    @category_children = Category.find_by(id: "#{params[:id]}", ancestry: nil).children
    respond_to do |format|
      format.html
      format.json
    end
  end

  def get_category_grandchildren
    @category_grandchildren = Category.find("#{params[:id]}").children
    @items = Item.all
    respond_to do |format|
      format.html
      format.json
    end
  end

  def get_brand
    respond_to do |format|
      format.html
      format.json
    end
  end
  
  def detail
    @items = Item.all
    @item = Item.find(params[:id])
    @category = Category.find(1)
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render '/items/new'
    end
  end

  
  def new
      @item = Item.new
      @item.images.build
      @category_parent = ["---"]
      @category_parent = Category.where(ancestry: nil).pluck(:name)
      @category_parent.unshift("---")
  end


  def check
    @items = Item.all
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:name, :status, :body,:category_id, :size, :brandname, :condition,:burden,:region,:sending_days,:price, images_attributes: [:image]).merge(saler_id: current_user.id, buyer_id: current_user.id)
  end
  
  def move_to_login
    redirect_to new_user_session_path unless user_signed_in?
  end
  
  end