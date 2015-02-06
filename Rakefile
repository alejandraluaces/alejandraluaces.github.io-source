task default: "build"

desc "Setup build directory"
task :setup do
  system <<-COMMAND
    rm -rf build && \
    git clone git@github.com:alejandraluaces/alejandraluaces.github.io.git build
  COMMAND
end

desc "Build changes"
task :build do
  system <<-COMMAND
    bundle exec middleman build
  COMMAND
end

desc "Build and push changes to production"
task :deploy do
  system <<-COMMAND
    bundle exec middleman build && \
    cd build && \
    git add -A && \
    git commit -m"Deploy on `date`"
    git push
  COMMAND
end
