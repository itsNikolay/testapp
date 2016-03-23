namespace :docker do
  task :release do
    # bin/rake docker:release
    version = '0.11'
    p `docker build -t itsnikolay/testapp:#{version} -f Dockerfile .`
    p `docker run -d -it itsnikolay/testapp:#{version} bash`

    p `docker commit $(docker ps -lq) itsnikolay/testapp:#{version}`
    p `docker push itsnikolay/testapp:#{version}`
  end
end
