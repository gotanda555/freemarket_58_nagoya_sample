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
    VALID_EMAIL_REGEX =                 /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :nickname,                presence: true, length: {maximum: 20}
    validates :email,                   presence: true
    validates :last_name,               presence: true
    validates :first_name,              presence: true
    validates :last_name_kana,          presence: true
    validates :first_name_kana,         presence: true
    validates :birthdate_year,          numericality: true
    validates :birthdate_month,         numericality: true
    validates :birthdate_day,           numericality: true
    validates :phone_number,            presence: true
    validates :address_number,          presence: true
    validates :address_prefecture,      presence: true
    validates :address_name,            presence: true
end
