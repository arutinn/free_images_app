# frozen_string_literal: true

class UsersController < ApplicationController
  def index
    @users = User.public_users
  end

  def show
    @user = User.find(params[:id])
  end
end
