class Api::EventsController < ApplicationController
  respond_to :json

  def index
    @events = Event.order(:date) 
    render json: @events
  end  

  def show
    respond_with Event.find(params[:id])
  end

  def create
    respond_with :api, Event.create(event_params)
  end

  def destroy
    respond_with Event.destroy(params[:id])
  end

  def update
    event = Event.find(params['id'])
    event.update(event_params)
    respond_with Event, json: event
  end

  private

  def event_params
    params.permit(
      :id,
      :title,
      :date,
      :event_id,
      :location
    )
  end
end