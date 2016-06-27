class BlogController < ApplicationController
  def show
    ## use YAML store to maintain blog list. get blog's corresponding markup file from the store then render it
    ##TODO code to get markup file from YAML store here
    ## actual rendering part here
    renderer = Redcarpet::Render::HTML.new(prettify: true)
    markdown = Redcarpet::Markdown.new(renderer, autolink: true, tables: true, fenced_code_blocks: true)
    ##FIXME id become an integer if its parsable :/ will need to remove the to_i in the future if i change to string
    blogpost = Blog.find(params[:id].to_i)
    @returnobj = markdown.render(File.read("#{Rails.root}/filestore/blogs/#{blogpost.filename}")).html_safe
  end

  def index
    @blogs = Blog.all
    p @blogs
  end

end
