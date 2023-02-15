class TopicsController < ApplicationController
  def index
    @topics = Topic.all
    @newTopic = Topic.new
  end

  def create
    @topic = Topic.new(params[:topic].permit(:title))
    @topic.save
    redirect_to root_path
  end

  def delete
    @topic = Topic.find(params[:id])
    @topic.destroy
    redirect_to root_path
  end

  def show
    @topic = Topic.find(params[:id])
    # @newpost = Post.new(:topic_id => params[:format])
    # @posts = Post.where(topic_id: params[:format])
  end
end
