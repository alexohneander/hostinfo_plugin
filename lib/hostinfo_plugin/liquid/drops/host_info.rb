require 'locomotive/steam'
require 'socket'
require 'hostinfo_plugin/controllers/hostinfo_controller'

module HostInfoPlugin
    module Liquid
      module Drops
        class HostInfo < ::Liquid::Drop
        
            def info
                value = HostInfoPlugin::Controllers::HostInfoController.get_host_info()
            end
          
        end
      end
    end
  end