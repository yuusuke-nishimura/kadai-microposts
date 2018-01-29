class RelationsController < ApplicationController
  before_action :require_user_logged_in
  def create
    micropost = Micropost.find(params[:favorite_id])
    current_user.like(micropost)
    flash[:success] = 'メッセージをお気に入り登録しました。'
    redirect_to current_user
  end

  def destroy
    micropost = Micropost.find(params[:favorite_id])
    current_user.unlike(micropost)
    flash[:success] = 'メッセージのお気に入りを解除しました。'
    redirect_to current_user
  end
end
