###
# Blog settings
###


#activate :bh


# Time.zone = "UTC"
# Build-specific configuration
configure :build do
  activate :autoprefixer
  activate :minify_css
  activate :minify_javascript
  activate :minify_html
end

configure :development do |development|
  activate :livereload
end

# To deploy to a remote branch via git (e.g. gh-pages on github):
activate :deploy do |deploy|
  deploy.method = :git
  deploy.branch = "master"
  deploy.build_before = true
end

activate :directory_indexes

activate :blog do |blog|
  blog.prefix = "blog/"
  blog.tag_template = "tag.html"
  blog.default_extension = ".markdown"
  blog.summary_length = 250
  blog.sources = "{year}-{month}-{day}-{title}.html"
end


set :markdown_engine, :redcarpet
set :markdown, :fenced_code_blocks => true

page "/blog/*", layout: "blog"
page "/blog/tags/*", layout: "tags"


page "/feed.xml", layout: false

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'
