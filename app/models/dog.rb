class Dog < ApplicationRecord
    belongs_to :user
    has_one :dog_record
    has_one_attached :image

    extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to :m_or_f
    belongs_to :year
    belongs_to :size
    belongs_to :dog_breed

    with_options presence: true do
        validates :image
        validates :name
        validates :date
        validates :description
        with_options numericality: { other_than: 1, message: "can't be blank" } do
            validates :m_or_f_id
            validates :year_id
            validates :dog_breed_id
            validates :size_id
        end
    end
end
