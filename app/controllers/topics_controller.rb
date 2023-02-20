class TopicsController < ApplicationController
  def index
    @topics = topic.all
    @newTopic = Topic.new
  end

  def create
    @topic = Topic.new(params[:topic].permit(:title))
    @topic.save
    redirect_to route_path
  end

  def delete
    @topic = Topic.find(params[:topic])
    @topic.destroy
    redirect_to root_path
  end

  def show
    @topic = Topic.find(params[:id])
    # @newpost = Post.new(:topic_id => params[:id])
    # @posts = Post.where(topic_id: params[:id])
  end
end
