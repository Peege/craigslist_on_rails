class PostsController < ApplicationController

  def index
    @category = Category.find(params[:category_id])
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @category = Category.find(params[:category_id])
  end

  def edit
    @category = Category.find(params[:category_id])
  end

  def create
    @category = Category.find(params[:category_id])
    @post = @category.posts.build(post_params)

    if @post.save
      redirect_to category_post_path(@category, @post)
    else
      render 'new'
    end
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end

  def destroy
    @category = Category.find(params[:category_id])
    @post = @category.posts.find(params[:id])
    @post.destroy

    redirect_to category_path(@category)
  end

  private
    def post_params
      params.require(:post).permit(:title, :description)
    end
end
