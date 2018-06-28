class PostsController < ApplicationController
  # GET /posts/new
  def new
  end

  # POST /posts
  def create
    render plain: params[:post].inspect
  end
end
