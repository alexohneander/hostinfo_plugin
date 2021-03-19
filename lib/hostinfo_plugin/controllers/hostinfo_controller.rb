require 'socket'

module HostInfoPlugin
    module Controllers
        class HostInfoController

            def self.get_host_info
                ip = HostInfoPlugin::Controllers::HostInfoController.local_ip()
                value = Socket.gethostname + ' - ' + ip
            end

            def self.local_ip
                orig, Socket.do_not_reverse_lookup = Socket.do_not_reverse_lookup, true  # turn off reverse DNS resolution temporarily
              
                UDPSocket.open do |s|
                  s.connect '64.233.187.99', 1
                  s.addr.last
                end
              ensure
                Socket.do_not_reverse_lookup = orig
              end
        end
    end
end