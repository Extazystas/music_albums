class TracksController < ApplicationController
  def index
  	@tracks = Track.all

  	respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tracks }
    end
  end

  def new
	@track = Track.new
  end

  def create
    @track = Track.new(params[:track])

    respond_to do |format|
      if @track.save
        format.html { redirect_to @track.music_album, notice: "Track #{@track.name} was succesfully saved." }
      else
        render action: :new
      end
	  end
  end

  def show
    @track = Track.find(params[:id])
  end

  def destroy
    @track = Track.find(params[:id])
    @track.destroy

    respond_to do |format|
      format.html { redirect_to @track.music_album }
      format.json { head :no_content }
    end
  end

  def edit
    @track = Track.find(params[:id])
  end

  def update
    @track = Track.find(params[:id])

    respond_to do |format|
      if @track.update_attributes(params[:track])
        format.html { redirect_to @track.music_album, notice: 'Track was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @track.errors, status: :unprocessable_entity }
      end
    end
  end

end
