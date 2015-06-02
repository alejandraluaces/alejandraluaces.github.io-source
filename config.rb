###
# Blog
###

activate :blog do |blog|

  blog.prefix = "blog"
  blog.tag_template = "tag.html"
  blog.calendar_template = "calendar.html"

end

page "/feed.xml", layout: false

page "/blog", :layout => :blog_post_layout
page "/blog/*", :layout => :blog_post_layout
page "/portfolio", :layout => :portfolio_layout

###
# Output
###

activate :autoprefixer
activate :imageoptim
activate :title, site: 'Alejandra Luaces', separator: ' | '
activate :syntax

###
# Helpers
###

activate :livereload

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

###
# Build
###

configure :build do

end
