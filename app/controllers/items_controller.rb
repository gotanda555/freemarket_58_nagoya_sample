class ItemsController < ApplicationController

  before_action :move_to_login, only: :check
  require 'payjp'

  def index
    @items = Item.all
  end
  
  def detail
    @items = Item.all
    @item = Item.find(params[:id])
    #@category = Category.find(1)
  end
  
  def new
  end
  
  def check
    @items = Item.all
    @item = Item.find(params[:id])
    card = Card.where(user_id: current_user.id).first
    #Cardテーブルは前回記事で作成、テーブルからpayjpの顧客IDを検索
    if card.blank?
      #登録された情報がない場合にカード登録画面に移動
      # redirect_to controller: "card", action: "new"
    else
      Payjp.api_key = 'sk_test_e310678fdacba84064864c64'
      #保管した顧客IDでpayjpから情報取得
      customer = Payjp::Customer.retrieve(card.customer_id)
      #保管したカードIDでpayjpから情報取得、カード情報表示のためインスタンス変数に代入
      @default_card_information = customer.cards.retrieve(card.card_id)
    end
  end

  def purchase
  end

  def pay
    @item = Item.find(params[:id])
    card = Card.where(user_id: current_user.id).first
    Payjp.api_key = 'sk_test_e310678fdacba84064864c64'
    charge = Payjp::Charge.create(
    amount: @item.price,
    customer: card.customer_id,
    currency: 'jpy'
    )
   redirect_to action: :done
  end

  def done
    @item = Item.find(params[:id])
  end
  
  def move_to_login
    redirect_to new_user_session_path unless user_signed_in?
  end
  
  private
  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(
      :name,
      :body,
      :price,
    ).merge(user_id: current_user.id)
  end
end