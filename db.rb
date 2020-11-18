begin
  require_relative '.env.rb'
rescue LoadError
end

require 'sequel/core'

# Delete DUNGEONS_AND_DRAGONS_API_DATABASE_URL from the environment, so it isn't accidently
# passed to subprocesses.  DUNGEONS_AND_DRAGONS_API_DATABASE_URL may contain passwords.
DB = Sequel.connect(ENV.delete('DUNGEONS_AND_DRAGONS_API_DATABASE_URL') || ENV.delete('DATABASE_URL'))
