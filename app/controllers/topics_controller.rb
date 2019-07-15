class TopicsController < ApplicationController
  skip_before_action :authorize_request, only: [:index, :show]
  
  # [...]
  # GET /topics
  def index
    # get current user topics
    @topics = Topic.all
    json_response(@topics)
  end

  def show
    @topic = Topic.find(params[:id])
    json_response(@topic)
  end

  private

  def topic_params
    params.permit(:title)
  end
end