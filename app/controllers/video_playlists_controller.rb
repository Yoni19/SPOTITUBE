class VideoPlaylistsController < ApplicationController

    attr_accessor :user, :playlist

  def index
    @playlist = Playlist.find(params[:playlist_id])
    @video_playlists = VideoPlaylist.al
  end

  def new
    create
  end

  def create
    @video_playlist = VideoPlaylist.new(video_id: @video.id, playlist_id: @playlist.id)

   
  end


end
