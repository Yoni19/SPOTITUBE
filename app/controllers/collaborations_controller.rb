class CollaborationsController < ApplicationController
  attr_accessor :user, :playlist

#    def index
#      @playlist = Playlist.find(params[:playlist_id])
#        @collaborations = Collaboration.all
#    end

    def new
#      @collaborator = User.find(params[:id])
      @collaboration = Collaboration.new

#      @playlist = Playlist.find(params[:id])
#      @collaboration = Collaboration.new
    end
    
    def create


      @collaboration = Collaboration.new(
        playlist_id: @playlist.id, 
        collaborator_id: @collaborator.id)

#      @new_video = Video.new(title: params[:title], url: params[:url], playlist: Playlist.find(params[:playlist_id]))
#      @collaboration = Collaboration.new(playlist: Playlist.find(params[:playlist_id]), collaborator_id: params[:collaborator_id])
      if @collaboration.save
        flash[:success] = "Merci #{current_user.name} ! #{@collaboration.collaborator.name} peut maintenant participer à la playlist !"
        redirect_to :controller => 'playlists', :action => 'show' , id: Playlist.find(params[:playlist_id])
      else
        flash[:danger] = "Nous n'avons pas réussi à ajouter de collaborateur pour la (ou les) raison(s) suivante(s) : #{@collaboration.errors.full_messages.each {|message| message}.join('')}"
        render :action => 'new'
      end
    end

end
