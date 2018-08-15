class LikesController < ApplicationController
  before_action :require_user_logged_in
  def create
    micropost = Micropost.find(paramas[:micropost_id])
    current_user.like(micropost)
    flash[:success] = "お気に入りに追加しました"
    redirect_to micropost
  end

  def destroy
    micropost = Micropost.find(paramas[:micropost_id])
    current_user.unlike(micropost)
    flash[:success] = 'お気に入りを解除しました'
    redirect_to micropost
  end
end