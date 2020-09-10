class VideosController < ApplicationController
    def index
        @videos = Video.all
    end

    def show
        @video = Video.find(params[:id])
        @title = @video.title

        # brancher l'API youtube iframe
    end

    def new
        @new_video = Video.new
    end


    def create
    # let's see how it works with Youtube API    @video = Video.new(title: params[:title], url: params[:url])
    
    @new_video = Video.new(title: params[:title], url: params[:url])
    if @new_video.save
      flash[:success] = "Merci #{current_user.name} ! Ta video a bien été ajoutée à notre super base de données... Maintenant, choisis la playlist à laquelle tu veux l' ajouter."
      redirect_to :controller => 'video_playlists', :action => 'new', id: @new_video.id
    else
      flash[:danger] = "Nous n'avons pas réussi à récupérer ta vidéo pour la (ou les) raison(s) suivante(s) : #{@new_video.errors.full_messages.each {|message| message}.join('')}"
      render :controller => 'playlists', :action => 'show', id: @playlist.id
    end

    end

    def destroy
    end


end
