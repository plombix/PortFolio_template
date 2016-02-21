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

  def page_vide
  	## /!\   Nb: definir ses pages statiques ici  c'est CACA!!!!   
  	## /!\   do\/ob  (pour les aveugles c'est le regard colère)
  end
end
