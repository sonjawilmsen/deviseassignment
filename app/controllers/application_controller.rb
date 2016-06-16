class ApplicationController < ActionController::Base
  def user
     @user = User.find( params[:user_id] )

     @posts = Post.where( user: @user ).order( created_at: :desc )
  end
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
