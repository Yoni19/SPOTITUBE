module VideosHelper
    def remember(video)
        session[:video_id] = video.id
      end

end
