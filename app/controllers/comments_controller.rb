class CommentsController < ApplicationController
  before_action :set_params, only: %i(create destroy)

  def create
    @comment = @post.comments.create(params[:comment].permit(:title, :comment))
    redirect_to post_path(@post)
  end

  def destroy
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end

  private

  def set_params
    @post = Post.find(params[:post_id])
  end
end
