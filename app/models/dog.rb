class Dog < ApplicationRecord
    belongs_to :user
    has_one_attached :image

    extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to :m_or_f
    belongs_to :year
    belongs_to :size
    belongs_to :dog_breed
end
