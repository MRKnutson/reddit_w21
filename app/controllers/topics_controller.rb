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

  # GET '/subs/sub_id/topics/new'
  # render form to create new topic
  def new
  # in neo notes but not needed
  # @topic = @sub.topic.new
  # would need topic if doing error handling
    render component: "NewTopic", props: { sub: @sub }
  end

  # POST to subs/:sub_id/topics
  def create
    # create new topic in memory
    topic = @sub.topics.new(topic_params)
    # try to save
    if(topic.save)
      # These two are the same (takes us to topic show page)
      redirect_to [@sub, @topic]
      # redirect_to sub_topics_path
    else
      # TODO: error handling
    end
  end

  # GET 'subs/:sub_id/topics/:id'
  # return form to edit topic
  def edit
    render component: "EditTopic", props: { sub:@sub, topic:@topic }
  end

  # PUT or PATCH to subs/:sub_id/topics/:id
  # update topic

  def update
    if(@topic.update(topic_params))
      redirect_to [@sub, @topic]
    else
    end
  end


  # Delete /subs/:sub_id/topics/:id
  #  Delete a single topic
  def destroy
    @topic.destroy
    redirect_to sub_topics_path(@sub)
  end


  private

  def topic_params
    params.require(:topic).permit(:name, :body)
  end

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
