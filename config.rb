###
# Blog settings
###

# Time.zone = "UTC"
# Build-specific configuration
configure :build do
end

configure :development do |development|
  activate :livereload
end

# To deploy to a remote branch via git (e.g. gh-pages on github):
activate :deploy do |deploy|
  deploy.method = :git
  deploy.branch = "master"
end

activate :directory_indexes



activate :blog do |blog|
  blog.tag_template = "tag.html"
  blog.calendar_template = "calendar.html"
end




page "/feed.xml", layout: false

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'


