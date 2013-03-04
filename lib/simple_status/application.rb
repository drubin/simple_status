require 'sinatra'
module SimpleStatus
  class Application < Sinatra::Base
    set :raise_errors, false
    set :show_exceptions, false

    error do
      "ERROR"
    end

    get '/heartbeat' do
      if defined? Mongoid
        Mongoid.default_session.command(ping: 1)
      end

      "OK"
    end
  end
end