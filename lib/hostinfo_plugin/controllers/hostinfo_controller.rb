require 'socket'

module HostInfoPlugin
    module Controllers
        class HostInfoController

            def self.get_host_info
                value = Rails.cache.read( :hostinfo_cache )
                if value.nil?
                    ip = HostInfoPlugin::Controllers::HostInfoController.local_ip()
                    expected_value = Socket.gethostname + ' - ' + ip

                    Rails.cache.write( :hostinfo_cache, expected_value )
                    value = expected_value
                end

                value
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
end