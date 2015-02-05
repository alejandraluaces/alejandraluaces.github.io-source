# If you have OpenSSL installed, we recommend updating
# the following line to use "https"
source 'http://rubygems.org'

gem "middleman", git: "git@github.com:middleman/middleman.git", branch: "v3-stable"
gem "middleman-gh-pages", git: "https://github.com/tarebyte/middleman-gh-pages.git", branch: "github_user_pages"

gem "middleman-blog"
gem "nokogiri"

# Live-reloading plugin
gem "middleman-livereload", "~> 3.1.0"

# For faster file watcher updates on Windows:
gem "wdm", "~> 0.1.0", :platforms => [:mswin, :mingw]

# Cross-templating language block fix for Ruby 1.8
platforms :mri_18 do
  gem "ruby18_source_location"
end
