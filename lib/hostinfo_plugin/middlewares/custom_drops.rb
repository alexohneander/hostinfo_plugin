require 'hostinfo_plugin/liquid/drops/host_info'

module HostInfoPlugin
  module Middlewares
    class CustomDrops
       
      def initialize(app)
           @app = app
       end
      
       def call(env)
          (env['steam.liquid_assigns'] ||= {}).tap do |assigns|
            assigns['host_info'] = HostInfoPlugin::Liquid::Drops::HostInfo.new
          end
          @app.call(env)
       end
      
    end
  end
end