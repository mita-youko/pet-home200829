class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,
                                      keys: [:member_type_id, :nickname, :name, :name_kana, :gender_id, :postal_code, :prefecture_id, :city, :building, :phone_number])
  end
end
