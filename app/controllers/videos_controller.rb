class VideosController < ApplicationController
    def index
        @videos = Video.all
    end

    def show
        @video = Video.find(params[:id])
        @title = @video.title
        @description = @video.description
        # brancher l'API youtube iframe
    end

    def new
        @video = Video.new
    end


    def create
    # let's see how it works with Youtube API    @video = Video.new(title: params[:title], url: params[:url])
    
=begin
    if @event.save
      flash[:success] = "Merci #{@event.user.email} ! Nous avons pu créer l'event : #{@event.title} "
      redirect_to :controller => 'events', :action => 'index'
    else
      flash[:danger] = "Nous n'avons pas réussi à créer l'event pour la (ou les) raison(s) suivante(s) : #{@event.errors.full_messages.each {|message| message}.join('')}"
      render :action => 'new'
    end
=end
    end

    def destroy
    end

end
