module VideosHelper

  def link_embed(link_url)
    if link_url[/youtu\.be\/([^\?]*)/] || link_url[/daily\.|lymotion\.com.video\/([^\?]*)/]
      youtube_id = $1
    else
      link_url[/^.*((v\/)|(embed\/)|(watch\?))\??v?=?([^\&\?]*).*/] || link_url[/^.*((v\/)|(embed\/)|(watch\?))\??v?=?([^\&\?]*).*/]
      youtube_id = $5
    end
  
  end


end
