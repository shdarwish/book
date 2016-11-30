# Copyright (c) 2015, @sudharti(Sudharsanan Muralidharan)
# Socify is an Open source Social network written in Ruby on Rails This file is licensed
# under GNU GPL v2 or later. See the LICENSE.

class HomeController < ApplicationController
  before_action :set_user, except: :front
  before_action :create_prefer, only: [:index]
  respond_to :html, :js


# usefull link http://railscasts.com/episodes/406-public-activity
  def index
    @post = Post.new
    @friends = @user.all_following.unshift(@user)
    @activities = PublicActivity::Activity.where(owner_id: @friends, key: "post.create").order(created_at: :desc).paginate(page: params[:page], per_page: 10)
  end

  def front
    @activities = PublicActivity::Activity.where(key: "post.create").order(created_at: :desc).paginate(page: params[:page], per_page: 10)
  end

  def find_friends
    @friends = @user.all_following
    @users =  User.where.not(id: @friends.unshift(@user)).paginate(page: params[:page])
  end

  def save_genre
    session[:answer] = params[:genre]
    redirect_to new_user_registration_path
    print session[:answer]
  end

  def recofriends
    @users = find_friends
    ug = current_user.genres

    @r = Array.new 

    ug.each do |g|
      @users.each do |u|
        if u.genres.include?(g)
          if !@r.include?(u)
            @r.unshift(u)
          end 
        end
      end
    end
    @r 
  end

  private
  def set_user
    @user = current_user
  end

  def create_prefer
    if @user.prefer.nil?
      prefer= Prefer.create(user_id: @user.id)
    end
  end
end
