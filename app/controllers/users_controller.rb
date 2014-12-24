class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    puts params[:user]
    @user = User.new(params[:user])
    if @user.save
      render inline: 'Success!'
    else
      render inline: 'Failure!'
    end
  end

end
