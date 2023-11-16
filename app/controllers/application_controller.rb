class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller? # deviseのコントローラーでのみbefore_actionを実行

  private
  def configure_permitted_parameters # 慣習的なメソッド名
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
