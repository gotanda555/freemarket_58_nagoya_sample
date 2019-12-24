class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  has_one :card
  has_many :items
  has_many :comments
  has_one :evaluation

    #バリデーション
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    VALID_PHONE_REGEX = /\A\d{10}$|^\d{11}\z/
    validates :nickname,                presence: true, length: {maximum: 20}
    validates :email,                   {presence: true, format: { with: VALID_EMAIL_REGEX }}
    validates :last_name,               presence: true
    validates :first_name,              presence: true
    validates :last_name_kana,          presence: true
    validates :first_name_kana,         presence: true
    validates :birthdate_year,          numericality: true
    validates :birthdate_month,         numericality: true
    validates :birthdate_day,           numericality: true
    validates :phone_number,            {presence: true, format: { with: VALID_PHONE_REGEX }}
    validates :address_number,          {presence: true ,format: {with: /\A[0-9]{3}-[0-9]{4}\z/}}
    validates :address_prefecture,      presence: true
    validates :address_name,            presence: true
    validates :address_phone_number,    {allow_blank: true, format: { with: VALID_PHONE_REGEX }}
end
