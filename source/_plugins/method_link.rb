module Jekyll
  module MethodLinkFilter
    require 'find'
    def method_link(title)
      # Find out which method pages exist
      page_titles = Find.find("source/guide").map { |path|
        path[/\/([^\/]*)\/index.md/, 1] if path =~ /index.md$/
      }.compact

      # Return a link to the ones that exist
      return "<a href=\"/guide/#{Utils.slugify(title)}\">#{title}</a>" if page_titles.include?(Utils.slugify(title))

      # Return just the title of those that don't exist
      return "#{title}"
    end
  end
end

Liquid::Template.register_filter(Jekyll::MethodLinkFilter)
