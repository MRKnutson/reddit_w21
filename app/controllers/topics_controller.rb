class TopicsController < ApplicationController
  before_action :set_sub
  before_action :set_topic, only: [:show, :update, :edit, :destroy]


  #  get 'subs/:sub_id/topics'
  #return topics for given sub
  def index
    render component: "Topics", props: { sub: @sub, topics: @sub.topics }
  end

  # Get /subs/:sub_id/topics/:id
  #  show a single topic
  def show
    render component: "Topic", props: { topic: @topic }
  end

  private

  def set_sub
    @sub =Sub.find(params[:sub_id])
  end

  def set_topic
    # this way is better because it will only search given subs topics
    @topic = @sub.topics.find(params[:id])
    # could also do it this way but it would look through ALL topics
    # @topic = @sub.Topic.find(params[:id])
  end
end
