workers Integer(ENV['WEB_CONCURRENCY'] || 2)
threads_count = Integer(ENV['APP_MAX_THREADS'] || 16)
threads threads_count, threads_count

preload_app!

rackup      DefaultRackup
port        ENV['PORT']     || 3000
environment ENV['RACK_ENV'] || 'development'
