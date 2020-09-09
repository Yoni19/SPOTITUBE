/*-class VideoPlaylistsController < ApplicationController

    attr_accessor :user, :playlist

  def index
    @playlist = Playlist.find(params[:playlist_id])
    @video_playlists = VideoPlaylist.al
    $ l  end

  def new
    create
  end

  def create
    @video_playlist= Attendance.new(participant_id: current_user.id, stripe_customer_id: params[:token], event: Event.find(params[:event]))

   
  end


end
