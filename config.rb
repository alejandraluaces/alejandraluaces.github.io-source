########################################################################
# Basics
########################################################################

set :haml, :format => :html5
set :url_root, 'http://alejandra.io'
set :css_dir, 'stylesheets'
set :images_dir, 'images'
set :partials_dir, 'partials'

########################################################################
# Blog
########################################################################

activate :blog do |blog|

  blog.prefix = "blog"
  blog.tag_template = "tag.html"
  blog.calendar_template = "calendar.html"

end

page "/feed.xml", layout: false
page "/blog/index.haml", layout: "blog_post_layout"
page "/portfolio/index.haml", layout: "portfolio_layout"

########################################################################
# Output
########################################################################

activate :title, site: 'Alejandra Luaces', separator: ' | '
activate :syntax
activate :livereload

activate :autoprefixer do |config|
  config.browsers = ['last 2 versions',
    'Firefox >= 25',
    'Android >= 4',
    'Explorer >= 9',
    'Opera >= 15',
    'OperaMini >= 7']
  config.cascade  = false
  config.inline   = true
  end

activate :imageoptim do |options|
  options.manifest = true
  options.image_extensions = %w(.png .jpg .gif .svg)
  options.advpng    = { :level => 4 }
  options.gifsicle  = { :interlace => false }
  options.jpegoptim = { :strip => ['all'], :max_quality => 100 }
  options.jpegtran  = { :copy_chunks => false, :progressive => true, :jpegrescan => true }
  options.optipng   = { :level => 6, :interlace => false }
end

configure :build do

end
