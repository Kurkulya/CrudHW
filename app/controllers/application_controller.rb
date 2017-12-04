class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_locale

  # def after_sign_in_path_for(resource_or_scope)
  #   I18n.locale = current_user.try(:lang) || I18n.default_locale
  # end

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
    current_user.set_lang(params[:locale]) if params[:locale] != nil
  end
end
