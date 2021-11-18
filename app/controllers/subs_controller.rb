class SubsController < ApplicationController
  before_action :set_sub, only: [:show, :edit, :update, :destroy]

  # get "/subs"
  def index
    subs = Sub.all

    render component: "Subs", props: { subs:subs }
  end

  # get "/subs/new"
  def new
    render component: "NewSub"
  end

  # post "/subs"
  def create
    # create sub in memory
    sub = Sub.new(sub_params)
    # try to save it to DB
    if(sub.save)
      redirect_to subs_path
    else
      # TODO: render our new form with sub(to show errors)
    end
  end

  # get "/subs/:id"
  def show

    render component: "Topics", props: { sub: @sub, topics: @sub.topics }
  end

  # get "/subs/:id/edit"
  def edit
    render component: "EditSub", props: {sub: @sub}
  end

  # put/patch to "/subs/:id"
  def update
    if(@sub.update(sub_params))
      redirect_to subs_path
    else
       # TODO: render our edit form with sub(to show errors)
    end
  end

  # delete "subs/:id"
  def destroy
    # sub = Sub.find(params[:id])
    @sub.destroy
    redirect_to subs_path
  end


  # Private means only visible to class
  private

  def sub_params
    params.require(:sub).permit(:name)
  end

  def set_sub
    @sub = Sub.find(params[:id])
  end

end
