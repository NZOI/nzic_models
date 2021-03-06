module Loofah
  module Scrubbers
    module NZIC
      class NoForm < Scrubber
        def initialize
          @direction = :top_down
        end
        def scrub(node)
          return CONTINUE unless (node.type == Nokogiri::XML::Node::ELEMENT_NODE) && (['form','input','select','textarea'].include? node.name)
          node.add_next_sibling Nokogiri::XML::Text.new(node.to_s, node.document)
          node.remove
          return STOP
        end
      end
    end
  end
end
