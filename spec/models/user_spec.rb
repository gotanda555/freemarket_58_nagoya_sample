require 'rails_helper'

describe User do
  describe '#create' do
    #email
    it "is invalid without a email" do
      user = build(:user, email: nil)
      user.valid?
      expect(user.errors[:email]).to include("can't be blank")
    end

    it "is invalid with a duplicate email address" do
      user = create(:user)
      another_user = build(:user, email: user.email)
      another_user.valid?
      expect(another_user.errors[:email]).to include("has already been taken")
    end

    #nickname
    it "is invalid without a nickname" do
      user = build(:user, nickname: nil)
      user.valid?
      expect(user.errors[:nickname]).to include("can't be blank")
    end

    it "is invalid with a nickname that has more than 20 characters " do
      user = build(:user, nickname: Faker::Internet.username(21))
      user.valid?
      expect(user.errors[:nickname]).to include("は20文字以内で入力してください")
    end

    #password
    it "is invalid without a password" do
      user = build(:user, password: nil)
      user.valid?
      expect(user.errors[:password]).to include("can't be blank")
    end

    # 姓
    it "is invalid without a last_name" do
      user = build(:user, last_name: nil)
      user.valid?
      expect(user.errors[:last_name]).to include("can't be blank")
    end
    
    # 名
    it "is invalid without a first_name" do
      user = build(:user, first_name: nil)
      user.valid?
      expect(user.errors[:first_name]).to include("can't be blank")
    end

    # 姓カナ
    it "is invalid without a last_name_kana" do
      user = build(:user, last_name_kana: nil)
      user.valid?
      expect(user.errors[:last_name_kana]).to include("can't be blank")
    end
    
    # 名カナ
    it "is invalid without a first_name_kana" do
      user = build(:user, first_name_kana: nil)
      user.valid?
      expect(user.errors[:first_name_kana]).to include("can't be blank")
    end

    #生年月日（年）
    it "is invalid without a birthdate_year" do
      user = build(:user, birthdate_year: "--")
      user.valid?
      expect(user.errors[:birthdate_year]).to include("は数値で入力してください")
    end
    
    #生年月日（月）
    it "is invalid without a birthdate_month" do
      user = build(:user, birthdate_month: "--")
      user.valid?
      expect(user.errors[:birthdate_month]).to include("は数値で入力してください")
    end

    #生年月日（日）
    it "is invalid without a birthdate_day" do
      user = build(:user, birthdate_day: "--")
      user.valid?
      expect(user.errors[:birthdate_day]).to include("は数値で入力してください")
    end

    # 電話番号関連
    it "is invalid without a phone_number" do
      user = build(:user, phone_number: nil)
      user.valid?
      expect(user.errors[:phone_number]).to include("can't be blank")
    end

    # 郵便番号関連
    it "is invalid without a address_number" do
      user = build(:user, address_number: nil)
      user.valid?
      expect(user.errors[:address_number]).to include("can't be blank")
    end

    # 都道府県
    it "is invalid without a address_prefecture" do
      user = build(:user, address_prefecture: nil)
      user.valid?
      expect(user.errors[:address_prefecture]).to include("can't be blank")
    end
    
    # 市区町村
    it "is invalid without a address_name" do
      user = build(:user, address_name: nil)
      user.valid?
      expect(user.errors[:address_name]).to include("can't be blank")
    end
    
    # 番地
    it "is invalid without a address_block" do
      user = build(:user, address_block: nil)
      user.valid?
      expect(user.errors[:address_block]).to include("can't be blank")
    end


  end
end
