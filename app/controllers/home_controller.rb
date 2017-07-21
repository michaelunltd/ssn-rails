class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @post = Post.new
    @posts = current_user.posts
  end


end
