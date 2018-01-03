module Jekyll
  module MethodLinkFilter
    def method_link(title)
      "<a href=\"/guide/#{Utils.slugify(title)}\">#{title}</a>"
    end
  end
end

Liquid::Template.register_filter(Jekyll::MethodLinkFilter)
