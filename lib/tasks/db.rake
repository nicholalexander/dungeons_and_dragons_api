namespace :db do
  desc "Migrate test database to latest version"
  task :create do
    `createuser -U postgres dungeons_and_dragons_api`
    `createdb -U postgres -O dungeons_and_dragons_api dungeons_and_dragons_api_production`
    `createdb -U postgres -O dungeons_and_dragons_api dungeons_and_dragons_api_test`
    `createdb -U postgres -O dungeons_and_dragons_api dungeons_and_dragons_api_development`
  end
end


