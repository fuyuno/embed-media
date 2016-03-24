module EmbedMedia
  module MediaHelper
    
    # Show embedded media.
    #
    # == Example
    # 
    #  <%= media("https://www.youtube.com/watch?v=kfvxmEuC7bU") %>
    def media(url, html_options = nil)
      html_options ||= {} 
      generate_code url, html_options 
    end

    private
    def generate_code url
      if    str = url.match(/https:\/\/www\.youtube\.com\/watch\?v=([^&]+)/)
        # YouTube
        code = youtube_embed(str[1], html_options) 
      elsif str = url.match(/https:\/\/vimeo\.com\/([0-9]+)/)
        # Vimeo
        code = vimeo_embed(str[1], html_options) 
      elsif str = url.match(/https:\/\/vine\.co\/v\/([^\/]*)/)
        # Vine
        code = vine_embed(str[1], html_options)
      elsif str = url.match(/https:\/\/www\.nicovideo\.jp\/watch\/([sm|nm|so][0-9]+)/)
        # Niconico
        code = niconico_embed(str[1], html_options)
      else
        code = ""
      end
      code
    end

    def youtube_embed video_id, html_options
      html_options["src"] = "https://www.youtube.com/embed/#{video_id}"
      html_options["frameborder"] = 0
      html_options["allowfullscreen"] = true

      # Default Player Settings
      html_options["width"] ||= 560
      html_options["height"] ||= 315
      
      content_tag(:iframe, "", html_options)
    end

    def vimeo_embed video_id, html_options
      html_options["src"] = "https://player.vimeo.com/video/#{video_id}"
      html_options["frameborder"] = 0
      html_options["webkitallowfullscreen"] = true
      html_options["mozallowfullscreen"] = true
      html_options["allowfullscreen"] = true

      # Default Player Settings
      html_options["width"] ||= 500
      html_options["height"] ||= 281

      content_tag(:iframe, "", html_options)
    end

    def vine_embed video_id, html_options
      html_options["src"] = "https://vine.co/v/#{video_id}/embed/simple"
      html_options["frameborder"] = 0

      # Default Player Settings
      html_options["width"] ||= 300
      html_options["height"] ||= 300

      content_tag(:iframe, "", html_options) + javascript_include_tag("https://platform.vine.co/static/scripts/embed.js")
    end

    def niconico_embed video_id, html_options
      html_options["src"] = "http://ext.nicovideo.jp/thumb/#{video_id}"
      html_options["class"] = "nicovideo"
      html_options["frameborder"] = 0
      html_options["scrolling"] = "no"

      # Default Player Settings
      html_options["width"] ||= 312
      html_options["height"] ||= 172

      content_tag(:iframe, "", html_options)
    end
  end
end
