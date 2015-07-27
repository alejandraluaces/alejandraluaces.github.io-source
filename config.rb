########################################################################
# Basics
########################################################################

set :haml, :format => :html5
set :url_root, 'http://alejandra.io'
set :css_dir, 'stylesheets'
set :images_dir, 'images'
set :partials_dir, 'partials'

page "/feed.xml", layout: false
page "/calendar.haml", layout: false

page "*", layout: "layout"
page "writing/source/*", layout: "post_layout"
page "work/index.html", layout: "portfolio_layout"

########################################################################
# Blog
########################################################################

activate :blog do |blog|

  blog.prefix = "writing"
  blog.tag_template = "tag.html"
  blog.calendar_template = "calendar.html"
  blog.sources = "writing/:title.html"
  blog.permalink = "writing/{title}.html"
  blog.tag_template = "tag.html"

end

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

configure :build do

  activate :minify_css

  activate :minify_javascript

end

helpers do
  def navbar_link_to(title, url)
    classes = ["navHeader__link"]
    classes << "currentPage" if current_page.url == url
    link_to title, url, class: classes.join(' ')
  end
end
