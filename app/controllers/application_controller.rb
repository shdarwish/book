# Copyright (c) 2015, @sudharti(Sudharsanan Muralidharan)
# Socify is an Open source Social network written in Ruby on Rails This file is licensed
# under GNU GPL v2 or later. See the LICENSE.

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

 # before_filter :configure_permitted_parameters, if: :devise_controller?
  before_action :configure_permitted_parameters, if: :devise_controller?

  before_action :create_prefer


  def create_notification(user, creater, kind, post)
    Notification.create(user_id: user, creater_id: creater, kind: kind, post_id: post)
  end

  # a method that check if the user is admin or not
   def admin_only
      if !current_user.admin?
        redirect_to root_path
      end 
    end
    
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :name, :password_confirmation])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:email, :remember_me])
  end

  def create_prefer
    if user_signed_in?
      if current_user.prefer.nil?
        prefer = Prefer.create(user_id: current_user.id)
      end
    end
  end

  include PublicActivity::StoreController
end
