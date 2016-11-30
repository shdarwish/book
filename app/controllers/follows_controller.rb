# Copyright (c) 2015, @sudharti(Sudharsanan Muralidharan)
# Socify is an Open source Social network written in Ruby on Rails This file is licensed
# under GNU GPL v2 or later. See the LICENSE.

class FollowsController < ApplicationController
  before_action :authenticate_user!
  after_action :create_noti, only: :create
  respond_to :js

  def create
    @user = User.find(params[:user_id])
    current_user.follow(@user)
  end

  def destroy
    @user = User.find(params[:user_id])
    current_user.stop_following(@user)
  end

  def create_noti
    followable = Follow.last.followable_id
    create_notification(followable, current_user.id, 'follow', nil)
  end

end
