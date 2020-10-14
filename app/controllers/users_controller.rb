class UsersController < ApplicationController
  def show
    
    @user = User.find(params[:id])
    
    
    @prototypes = @user.prototypes
    @username = @user.name
    @userprofile = @user.profile
    @useroccupation = @user.occupation
    @userposition = @user.position
    
end
end