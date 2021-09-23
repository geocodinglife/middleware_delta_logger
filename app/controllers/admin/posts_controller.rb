class Admin::PostsController < Admin::ApplicationController
  before_action :set_post, only: %i[ show edit update destroy ]

  def index
    @posts = Post.all
  end

  def show; end

  def new
    @post = Post.new
  end

  def edit; end

  def create
    @post = Post.new(post_params)
    render :new, status: :unprocessable_entity if !@post.save
    redirect_to admin_post_path, notice: "Post was successfully created."
  end

  def update
    render :edit, status: :unprocessable_entity if !@post.update(post_params)
    redirect_to admin_post_path, notice: "Post was successfully updated."
  end

  def destroy
    @post.destroy
    redirect_to admin_posts_url, notice: "Post was successfully destroyed."
  end

  private
    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:title, :content, :publish, :user_id)
    end
end
