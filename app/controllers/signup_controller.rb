class SignupController < ApplicationController

  def index
  end

  def step1
    @user = User.new # 新規インスタンス作成
  end

  def step2
    # step1で入力された値をsessionに保存
    session[:nickname] = user_params[:nickname]
    session[:email] = user_params[:email]
    session[:password] = user_params[:password]
    session[:last_name] = user_params[:last_name]
    session[:first_name] = user_params[:first_name]
    session[:last_name_kana] = user_params[:last_name_kana]
    session[:first_name_kana] = user_params[:first_name_kana]
    session[:birthdate_year] = user_params[:birthdate_year]
    session[:birthdate_month] = user_params[:birthdate_month]
    session[:birthdate_day] = user_params[:birthdate_day]
    @user = User.new # 新規インスタンス作成
  end

  def step3
    session[:phone_number] = user_params[:phone_number]
    @user = User.new # 新規インスタンス作成
  end

  def step4
    session[:address_number] = user_params[:address_number]
    session[:address_prefecture] = user_params[:address_prefecture]
    session[:address_name] = user_params[:address_name]
    session[:address_block] = user_params[:address_block]
    session[:address_building] = user_params[:address_building]
    session[:address_phone_number] = user_params[:address_phone_number]
    @user = User.new # 新規インスタンス作成
  end

  def create
    @user = User.new(
      nickname: session[:nickname], # sessionに保存された値をインスタンスに渡す
      email: session[:email],
      password: session[:password],
      last_name: session[:last_name], 
      first_name: session[:first_name], 
      last_name_kana: session[:last_name_kana], 
      first_name_kana: session[:first_name_kana], 
      birthdate_year: session[:birthdate_year],
      birthdate_month: session[:birthdate_month],
      birthdate_day: session[:birthdate_day],
      phone_number: session[:phone_number],
      address_number: session[:address_number],
      address_prefecture: session[:address_prefecture],
      address_name: session[:address_name],
      address_block: session[:address_block],
      address_building: session[:address_building],
      address_phone_number: session[:address_phone_number],
    )

    if @user.save
      # ログインするための情報を保管
      session[:id] = @user.id
      redirect_to done_signup_index_path
    else
      render '/signup/step1'
    end

    def done
      sign_in User.find(session[:id]) unless user_signed_in?
    end
  end


  private

  def user_params
    params.require(:user).permit(
      :nickname, 
      :email, 
      :password, 
      :last_name, 
      :first_name, 
      :last_name_kana, 
      :first_name_kana, 
      :birthdate_year, 
      :birthdate_month, 
      :birthdate_day, 
      :phone_number,
      :address_number,
      :address_prefecture,
      :address_name,
      :address_block,
      :address_building,
      :address_phone_number,
  )
  end

end
