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
        if Mongoid.method_defined? :default_session
          #Mongoid removed default_session
          Mongoid.default_session.command(ping: 1)
        else 
          Mongoid::Clients::Factory.default.command(ping: 1)
        end
      end

      if defined? ActiveRecord::Base
        ActiveRecord::Base.connected? 
      end

      "OK"
    end
  end
end