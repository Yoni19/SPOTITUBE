class VideosController < ApplicationController
    def index
        @videos = Video.all
    end

    def create
        # API youtube ?
    end

    def destroy
        @video = Video.find
    end

end
