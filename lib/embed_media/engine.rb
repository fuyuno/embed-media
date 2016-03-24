module EmbedMedia
  class Engine < ::Rails::Engine

    initializer "embed_media" do |app|
      ActionView::Base.send :include, EmbedMedia::MediaHelper
    end
  end
end
