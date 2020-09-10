class CollaborationsController < ApplicationController

    def index
        @collaborations = Collaboration.all
        @playlist = Playlist.find(params[:playlist_id])
    end

    def new
        @playlist = Playlist.find(params[:playlist_id])
    end
    
    def create
      @playlist = Playlist.find(params[:playlist_id])
      @collaboration = Collaboration.new(playlist: Playlist.find(params[:playlist_id]), collaborator: User.find(params[:user_id])
      if @collaboration.save
        flash[:success] = "Merci #{current_user.name} ! #{@collaboration.collaborator.name} peut maintenant participer à la playlist !"
        redirect_to :controller => 'playlists', :action => 'show' , id: Playlist.find(params[:playlist_id])
      else
        flash[:danger] = "Nous n'avons pas réussi à ajouter de collaborateur pour la (ou les) raison(s) suivante(s) : #{@collaboration.errors.full_messages.each {|message| message}.join('')}"
        render :action => 'new'
      end
    end

end
