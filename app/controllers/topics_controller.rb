class TopicsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_topic, only: [:show, :edit, :update, :destroy]

  def index
    @topics = Topic.all.order("created_at DESC")
  end

  def show
  end

  def new
    @topic = current_user.topics.build
  end

  def create
    @topic = current_user.topics.build(topics_params)

    if @topic.save
      redirect_to @topic, notice: "Topic was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end
  
  def edit
  end

  def update
    if @topic.update(topics_params)
      redirect_to @topic, notice: "Topic was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @topic.destroy
    redirect_to topics_url, notice: "Topic was successfully destroyed."
  end

  private

  def set_topic
    @topic = Topic.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to topics_url, alert: "Note not found."
  end

  def topics_params
    params.require(:topic).permit(:title, :subject)
  end
end
