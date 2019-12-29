class ItemsController < ApplicationController

  before_action :move_to_login, only: :check

  def index
    @item = Item.new
    @items = Item.all
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
    # @brand = Brand.new
    # @brands = Brand.all
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
    @item = Item.create(item_params)
    binding.pry
    redirect_to root_path
  end
  
  def new
      @item = Item.new
      @item.images.build
      #@item.brand.build
      @category_parent = ["---"]
      Category.where(ancestry: nil).each do |parent|
      @category_parent << parent.name
      end
  end

  def check
    @items = Item.all
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:name, :status, :body,:category_id, :size, :brand_id, :condition,:burden,:region,:sending_days,:price, brand_attributes: [:brandname],images_attributes: [:image]).merge(saler_id: current_user.id, buyer_id: current_user.id)
  end
  
  def move_to_login
    redirect_to new_user_session_path unless user_signed_in?
  end
  
  end