class DogRecord < ApplicationRecord
    belongs_to :dog

    with_options presence: true do
        validates :checkbox
        validates :phone_number, format: { with: /\A\d{10,11}\z/ }

        with_options format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/} do
            validates :new_parent_name
            validates :parent_name
        end
    end 
end
