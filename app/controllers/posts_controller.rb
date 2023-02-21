class PostsController < ApplicationController
  def index
  end

  def create
    @posts = Post.new(params[:post].permit(:topic_id, :name, :body))
    @posts.save
    redirect_to "/topics/:id"
  end
end
