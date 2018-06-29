class PostsController < ApplicationController
  # GET /posts/new
  def new
    @post = Post.new
  end

  # POST /posts
  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to @post
    else
      render :new, status: :unprocessable_entity
    end
  end

  # GET /posts/:id
  def show
    @post = Post.find(params[:id])
  end

  # GET /posts
  def index
    @posts = Post.all
  end

  # GET /posts/:id/edit
  def edit
    @post = Post.find(params[:id])
  end

  # PATCH /posts/:id
  # PUT   /posts/:id
  def update
    @post = Post.find(params[:id])

    if @post.update(post_params)
      redirect_to @post
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
    def post_params
      params.require(:post).permit(:title, :text)
    end

end
