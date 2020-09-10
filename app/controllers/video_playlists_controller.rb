class VideoPlaylistsController < ApplicationController

attr_accessor :video

  def index
    @video_playlists = VideoPlaylist.all
  end

  def show
    @video = Video.find(params[:id])
    @video_playlist = Video.find(params[:id])
    video_id = @video.id
    playlist_id = @playlist.id
    # brancher l'API youtube iframe
  end

  def new
    @video_playlist = VideoPlaylist.new
  end

  def create

    @video_playlist = VideoPlaylist.new(
      video_id: params[:video_id],
      playlist_id: params[:playlist_id])

    if @video_playlist.save
      flash[:success] = "Merci #{@video_playlist.user.email} ! Ta video a bien été ajoutée à playlist #{@playlist.title}"
      redirect_to :controller => 'playlist', :action => 'show', id: @video_playlist.playlist_id
    else
      flash[:danger] = "Nous n'avons pas réussi à récupérer ta vidéo pour la (ou les) raison(s) suivante(s) : #{@video_playlist.errors.full_messages.each {|message| message}.join('')}"
      render :action => 'new'
    end

  end



end


