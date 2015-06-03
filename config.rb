set :haml, :format => :html5

activate :blog do |blog|

  blog.prefix = "blog"
  blog.tag_template = "tag.html"
  blog.calendar_template = "calendar.html"

end

page "/feed.xml", layout: false
page "/blog/index.haml", layout: "blog_post_layout"
page "/portfolio/index.haml", layout: "portfolio_layout"

activate :autoprefixer
activate :imageoptim
activate :title, site: 'Alejandra Luaces', separator: ' | '
activate :syntax

activate :livereload

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

configure :build do

end
