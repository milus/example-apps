# frozen_string_literal: true

# Namespace for everything related to our small ping-pong game
module Pong
  # Catches the ping and uses PingResponder to respond on a pong topic
  class PingConsumer < ApplicationConsumer
    def consume
      if params.payload['counter'] == 666
        raise 'Oh no! It is the Evil!'
      else
        puts "PING: ----- " + params.payload['counter'].to_s
      end
    end
  end
end
