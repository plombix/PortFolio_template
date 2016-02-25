class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  protect_from_forgery with: :exception

  ### Change my location to ensure proper function
  ### This call back can take place in any controller
  ###  and also being customized ,to force auth in only
  ###  certain pages....
  ### For more info please read :
  ### _Devise github    : github.com/plataformatec/devise
  ### _Devise blog/news : blog.plataformatec.com.br/tag/devise
  before_action :authenticate_user!

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:username) }
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :phone,:subscribe,:gender,:adress,:citycode,:city) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:username, :email, :phone,:subscribe,:gender,:adress,:citycode,:city) }
  end

  def newsletter_send
    User.where(subscribe: 1).each do |user|
      Resume.news_letter(user).deliver_now
    end
  end
  def page_vide
    Resume.welcome_email(current_user).deliver_now if current_user.sign_in_count == 1
    ## /!\   Nb: definir ses pages statiques ici  c'est CACA!!!!
    ## /!\   do\/ob  (pour les aveugles c'est le regard colère)
  end
end
