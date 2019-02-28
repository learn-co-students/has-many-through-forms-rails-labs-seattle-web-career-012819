class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    @comments = @post.comments
    @unique_users_with_comments = @comments.map {|c| c.user }.uniq
    @new_comment = Comment.new
    @new_comment.build_user
    # byebug
  end

  def index
    # byebug
    @posts = Post.all
  end

  def new
    @post = Post.new
    @post.categories.build
  end

  def create
    # byebug
    @post = Post.create(post_params)
    redirect_to @post
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, category_ids:[], categories_attributes: [:name])
  end
end
