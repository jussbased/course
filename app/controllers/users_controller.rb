class UsersController < ApplicationController
skip_before_action :verify_authenticity_token


  def show
  	@user = User.find(params[:id])
     end


def destroy
@user = User.find (params[:id])
@user.destroy
if @user.destroy
redirect_to root_url, notice: "deleted"
end
end

  def edit_multiple
  	if params[:commit] == "Delete"
    User.where(id: params[:users_ids]).each do |user|
      user.delete
    end
  elsif params[:commit] == "Lock"
  	User.where(id: params[:users_ids]).each do |user_to_lock|
      user_to_lock.locked=true
  		user_to_lock.save
  	end
    if current_user.locked==true 
      current_user.update_attribute :admin, true
      end
  elsif params[:commit] == "Unlock"
  	User.where(id: params[:users_ids]).each do |user_to_unlock|
      user_to_unlock.locked=false
  		user_to_unlock.save
      user_to_unlock.update_attribute :admin, false
      end
  end
redirect_to root_url 
end
end

