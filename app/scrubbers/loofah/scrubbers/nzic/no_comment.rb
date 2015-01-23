module Loofah
  module Scrubbers
    class NZIC::NoComment < Scrubber
      def initialize
        @direction = :top_down
      end
      def scrub(node)
        return CONTINUE unless node.comment?
        node.remove
        return STOP
      end
    end
  end
end
