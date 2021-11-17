class SubsController < ApplicationController

  # get "/subs"
  def index
    # TODO: display all subs, get all subs

    render component: "Subs"
  end

  # get "/subs/new"
  def new
    # TODO: take to new sub form

    render component: "NewSub"
  end

  # post "/subs"
  def create
    # TODO: Create a new sub
  end

  # get "/subs/:id"
  def show
    # TODO: show an individual sub

    render component: "Sub"
  end

  # get "/subs/:id/edit"
  def edit
    #TODO: take to edit form

    render component: "EditSub"
  end

  # put/patch to "/subs/:id"
  def update
    # TODO: update an existing sub
  end

  # delete "subs/:id"
  def destroy
    # TODO: delete a specific sub
  end

end
