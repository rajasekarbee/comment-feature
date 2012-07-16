class CommentsController < ApplicationController
  # POST /comments
  # POST /comments.xml
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create!(params[:comment])
    redirect_to @post
  end

  # DELETE /comments/1
  # DELETE /comments/1.xml
  def destroy
    puts"**************yahoo"
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end
end
