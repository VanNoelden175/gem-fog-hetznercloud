module Fog
  module Hetznercloud
    class Compute
      class Real
        def list_networks(filters = {})
          get('/networks', filters)
        end
      end

      class Mock
        def list_networks
          Fog::Mock.not_implemented
        end
      end
    end
  end
end
