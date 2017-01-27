namespace :app do
  task :start do
    system "bundle exec rails s &"
    system "cd frontend && ember server --proxy http://0.0.0.0:3000"
  end
end
