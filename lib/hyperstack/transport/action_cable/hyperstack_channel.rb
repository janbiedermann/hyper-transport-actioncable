module Hyperstack
  module Transport
    module ActionCable
      class HyperstackChannel < ActionCable::Channel
        def subscribed
          stream_from "hyper-transport-notifications-#{params[:session_id]}"
        end
      end
    end
  end
end