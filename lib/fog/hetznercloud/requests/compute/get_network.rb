module Fog
  module Hetznercloud
    class Compute
      class Real
        def get_network(id)
          get("/networks/#{id}")
        end
      end

      class Mock
        def get_network(_id)
          Fog::Mock.not_implemented
        end
      end
    end
  end
end
