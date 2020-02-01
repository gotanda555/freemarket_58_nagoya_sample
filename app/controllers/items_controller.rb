class ItemsController < ApplicationController

  before_action :move_to_login, only: [:new, :check, :show]
  before_action :set_item, only: [:destroy, :update]

  def index
    @item = Item.new
    @items = Item.all
    @ladies = Category.find(1)
    @ladies_grandchild = @ladies.indirects
    @men = Category.find(219)
    @men_grandchild = @men.indirects
    @category_parent = Category.where(ancestry: nil)
    @category_children = Category.find_by("#{params[:id]}").children
    respond_to do |format|
      format.html
      format.json
    end
  end

  def linklist
    @category_children = Category.find_by("#{params[:id]}").children
    respond_to do |format|
      format.html
      format.json
    end
  end

  def get_category_children
    @category_children = Category.find_by("#{params[:id]}", ancestry: nil).children
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
    @fashion1 = Category.where(id: 1..71)
    @fashion2 = Category.where(id:184..202)
    @fashion3 = Category.where(id:205..211)
    @fashion4 = Category.where(id:219..269)
    @fashion5 = Category.where(id:378..457)
    respond_to do |format|
      format.html
      format.json
    end
  end
  
  def show
    @items = Item.all
    @item = Item.find(params[:id])
    @category = Category.find(@item.category_id)
    @categoryparent = @category.parent
    @categorygrandparent = @categoryparent.parent
    @category_parent = Category.where(ancestry: nil)

  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render '/items/new'
    end
  end

  def edit
    @item = Item.find(params[:id])
    @category = Category.find(@item.category_id)
    @categoryparent = @category.parent
    @cateogryparent_group = @categoryparent.siblings
    @categorygrandparent = @categoryparent.parent
    @categorygrandparent_group = @category.siblings
  end

  
  def update
      if @item.saler_id == current_user.id
        @item.update(item_update_params)
        if @item.save
          redirect_to root_path
        else
          redirect_to edit_path
        end
      end
  end

  def new
      @item = Item.new
      @item.images.build
      @category_parent = ["---"]
      @category_parent = Category.where(ancestry: nil).pluck(:name)
      @category_parent.unshift("---")
  end

  def destroy
    if @item.saler_id == current_user.id
      if @item.destroy
        redirect_to root_path
      else
        render '/items/#{params[:id]}'
      end
    end
  end

  def check
    @items = Item.all
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:name, :status, :body,:category_id, :size, :brandname, :condition,:burden,:region,:sending_days,:price, images_attributes: [:image]).merge(saler_id: current_user.id, buyer_id: current_user.id)
  end

  def item_update_params
    params.require(:item).permit(:name, :status, :body,:category_id, :size, :brandname, :condition,:burden,:region,:sending_days,:price, images_attributes: [:image, :_destroy, :id]).merge(saler_id: current_user.id, buyer_id: current_user.id)
    
  end
  
  def move_to_login
    redirect_to new_user_session_path unless user_signed_in?
  end

  def set_item
    @item = Item.find(params[:id])
  end
  end