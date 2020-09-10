class PlaylistsController < ApplicationController

    def index
        @playlists = Paylist.all
    end

    def show
        @playlist = Playlist.find(params[:id])
    end

    def new
        @playlist = Playlist.new(playlist_params)
    end

    def create
        @playlist = Playlist.new(playlist_params)
        @playlist.owner_id = current_user.id
    
        if @playlist.save 
          flash[:success] = "La playlist #{playlist.title} a bien été créée !"
          redirect_to :controller => 'playlists', :action => 'show', id: @playlist.id
        else
          flash[:danger] = "Nous n'avons pas réussi à créer ta playlist pour la (ou les) raison(s) suivante(s) : #{@playlist.errors.full_messages.each {| message | message}.join(' , ')}"
          render :action => 'new'
        end
    end

    def edit
        @playlist = Playlist.find(params[:id])
    end

    def update
        @playlist = Playlist.find(params[:id])
        if @playlist.update(playlist_params)
          flash[:success] = "Merci #{@playlist.owner.name} ! La playlist #{@playlist.title} "
          redirect_to :controller => 'playlists', :action => 'show', id: @playlist.id
        else
          flash[:danger] = "Nous n'avons pas réussi à modifier cette playlist"
          render :action => 'edit'
        end
    end

    def destroy
        @playlist = Playlist.find(params[:id])
        if @playlist.destroy
          flash[:success] = "Merci #{@playlist.owner.name} ! La playlist : #{@playlist.title} a été supprimée."
          redirect_to :controller => 'playlists', :action => 'index' 
        else
          flash[:danger] = "Nous n'avons pas réussi à supprimer la playlist ! "
          render :action => 'show'
        end
    end

    private

    def playlist_params
      params.require(:playlist).permit(:title, :description)
    end

end
