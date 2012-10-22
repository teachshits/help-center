class TopicsController < ApplicationController
  respond_to :html, :js

  def index
    @guides = Guide.roots
    @top_questions = Faq.root.order_by_visualizations
  end

  def show
    @topic = Topic.find(params[:id])
    @ancestors = @topic.ancestors
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.create(params[:topic])
    @topic.save

    parent = Topic.find(params[:parent_id])
    @topic.move_to_child_of(parent)

    respond_with(@topic)
  end

  def edit
    @topic = Topic.find(params[:id])
    @topics_and_categories = @topic.descendants
  end

  def update
    @topic = Topic.find(params[:id])

    @topic.update_attributes(params[:topic])

    redirect_to edit_topic_path(@topic)
  end

  def destroy
    @topic = Topic.find(params[:id])
    @topic.destroy

    flash[:notice] = "Tópico removido"
    redirect_to :root
  end
end
