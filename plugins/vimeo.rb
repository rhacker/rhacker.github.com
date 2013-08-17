module Jekyll
  class Vimeo < Liquid::Tag

    def initialize(name, id, tokens)
      super
      @id = id
    end

    def render(context)
      %(
      <div class="flex-video widescreen vimeo"><iframe src="http://player.vimeo.com/video/#{@id}"></iframe></div>
      )
    end
  end
end

Liquid::Template.register_tag('vimeo', Jekyll::Vimeo)