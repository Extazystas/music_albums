class TracksController < ApplicationController
  def new
	@track = Track.new
  end

  def create
    @track = Track.new(params[:track])
    if @track.save
      render text: 'Saved'
    else
      render action: :new
    end
  end
end
