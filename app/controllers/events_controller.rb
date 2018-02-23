class EventsController < ApplicationController
  def index
    @events = Event.all.order("created_at DESC").page(params[:page]).per(5)
  end

end
