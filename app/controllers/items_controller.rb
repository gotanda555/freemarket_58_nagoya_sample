class ItemsController < ApplicationController

  before_action :move_to_login, only: :check

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
  end

  def purchase
  end

  def pay
    @item = Item.find(params[:id])
    Payjp.api_key = 'sk_test_e310678fdacba84064864c64'
    charge = Payjp::Charge.create(
    amount: @item.price,
    card: params['payjp-token'],
    currency: 'jpy'
    )
    redirect_to action: :done
  end

  def done
  end
  
  def move_to_login
    redirect_to new_user_session_path unless user_signed_in?
  end
  
  private
  # def set_item
  #   @item = Item.find(params[:id])
  # end

  def item_params
    params.require(:item).permit(
      :name,
      :body,
      :price,
    ).merge(user_id: current_user.id)
  end
end