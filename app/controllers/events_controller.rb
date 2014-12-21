class EventsController < ApplicationController
  def index
    # @events = Event.all
  end

  def show

  end

  def new
    # @event = Event.new
  end

  def edit
  end


  def create
     UserNotifier.send_signup_email(@user).deliver
  end

  def update
  end

  def destroy
  end
end
