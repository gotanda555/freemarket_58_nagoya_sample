class ItemsController < ApplicationController

  before_action :move_to_login, only: [:new, :check, :show]
  before_action :set_item, only: [:destroy, :update, :pay]
  before_action :set_card, only: [:check, :pay]
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

    #Cardテーブルは前回記事で作成、テーブルからpayjpの顧客IDを検索
    if card.blank?
      #登録された情報がない場合にカード登録画面に移動
      redirect_to card_mypages_path
    else
      Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]      
      #保管した顧客IDでpayjpから情報取得
      customer = Payjp::Customer.retrieve(card.customer_id)
      #保管したカードIDでpayjpから情報取得、カード情報表示のためインスタンス変数に代入
      @default_card_information = customer.cards.retrieve(card.card_id)
    end
  end

  def purchase
  end

  def pay
    Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
    charge = Payjp::Charge.create(
    amount: @item.price,
    customer: card.customer_id,
    currency: 'jpy'
    )
   redirect_to action: :done
  end

  def done
    @items = Item.all
    @item = Item.find(params[:id])
    @item.update(status: 1)
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
  
  private

  def item_params
    params.require(:item).permit(
      :name,
      :body,
      :price,
    ).merge(user_id: current_user.id)
  end

  def set_item
    @item = Item.find(params[:id])
  end

  def set_card
    card = Card.where(user_id: current_user.id).first
  end
end
