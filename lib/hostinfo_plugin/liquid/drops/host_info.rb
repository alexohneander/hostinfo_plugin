require 'locomotive/steam'
require 'hostinfo_plugin/controllers/hostinfo_controller'

module HostInfoPlugin
    module Liquid
      module Drops
        class HostInfo < ::Liquid::Drop
          
          def list
            [
              { 'name' => 'iPhone', 'price' => 42.0 }, 
              { 'name' => 'Macbook Pro', 'price' => 42.0 }
             ]
          end
          
        end
      end
    end
  end