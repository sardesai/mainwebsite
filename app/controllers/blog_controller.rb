class BlogController < ApplicationController
  def show
    ## use YAML store to maintain blog list. get blog's corresponding markup file from the store then render it
    ##TODO code to get markup file from YAML store here
    ## actual rendering part here
    renderer = Redcarpet::Render::HTML.new(prettify: true)
    markdown = Redcarpet::Markdown.new(renderer, autolink: true, tables: true, fenced_code_blocks: true)
    @returnobj = markdown.render(File.read("#{Rails.root}/filestore/blogs/testentry.md")).html_safe
  end
end
