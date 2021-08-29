class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :nickname
    validates :name, format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/}
    validates :name_kana, format: { with: /\A[ァ-ヶー－]+\z/ }
    validates :postal_code, format: { with: /\A[0-9]{3}-[0-9]{4}\z/, message: 'is invalid. Include hyphen(-)' }
    validates :city
    validates :phone_number, format: { with: /\A\d{10,11}\z/ }
      
    with_options numericality: { other_than: 1, message: "can't be blank" } do
       validates :prefecture_id
       validates :gender_id
       validates :member_type_id
    end
  end

  has_many :dogs
end
