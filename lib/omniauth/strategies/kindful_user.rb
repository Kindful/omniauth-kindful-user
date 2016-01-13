require 'omniauth-oauth2'


module OmniAuth
  module Strategies
    class KindfulUser < OmniAuth::Strategies::OAuth2
      option :name, 'kindful_user'
      option :client_options, {
        # the site subdomain is specific to the kindful client your working with.   
        :site          => 'https://client-subdomain.kindful.com',
        :authorize_url => '/oauth2/authenticate',
        :token_url     => '/oauth2/token'
      }
      
      uid { raw_info['id'] }

      def raw_info
        @raw_info ||= access_token.get('/oauth2/api/v1/details.json').parsed
      end

      # clear query string on redirect_url so as to conform to 3.1.2 of oauth2 spec
      def query_string
        ""
      end

    
    end
  end
end
