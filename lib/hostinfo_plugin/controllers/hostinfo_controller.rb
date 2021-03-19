
module HostInfoPlugin
    module Controllers
        class HostInfoController

            # def self.get_posts
            #     # Wagon mode
            #     if Object.const_defined?('Rails')
            #         value = Rails.cache.read( :instagram_cache )
            #         if value.nil?
            #             expected_value = InstagramApi.user.recent_media
            #             Rails.cache.write( :some_key, expected_value )

            #             value = expected_value
            #         end 
            #     else
            #         value = InstagramApi.user.recent_media
            #     end

            #     # Return Value
            #     value
            # end

            def self.init

            end
        end
    end
end