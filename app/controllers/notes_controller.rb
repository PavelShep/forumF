class NotesController < ApplicationController
  before_action :set_topic
  before_action :authenticate_user!
  before_action :set_note, only: [:edit, :update, :destroy]

  def index
  end

  def new
    @note = Note.new
  end

  def create
    @note = Note.new(note_params)
    @note.user_id = current_user.id
    @note.topic_id = @topic.id
    if @note.save
      redirect_to topic_url(@topic), notice: "Note was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end
  
  def edit
  end

  def update
    if @note.update(note_params)
      redirect_to topic_url(@topic), notice: "Note was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @note.destroy
    redirect_to topic_url(@topic), notice: "Note was successfully destroyed."
  end

  private

  def set_note
    @note = current_user.notes.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to notes_url, alert: "Note not found."
  end

  def set_topic
    @topic = Topic.find(params[:topic_id])
  rescue ActiveRecord::RecordNotFound
    redirect_to topics_url, alert: "Topic not found."
  end

  def note_params
    params.require(:note).permit(:body)
  end
end
