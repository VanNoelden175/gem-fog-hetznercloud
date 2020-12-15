module Fog
  module Hetznercloud
    class Compute
      class Networks < Fog::Collection
        model Fog::Hetznercloud::Compute::Network

        def all(filters = {})
          networks = service.list_networks(filters).body['networks'] || []
          load(networks)
        end

        def get(identity)
          if (network = service.get_network(identity).body['network'])
            new(network)
          end
        rescue Fog::Hetznercloud::Compute::UnknownResourceError
          nil
        end
      end
    end
  end
end
