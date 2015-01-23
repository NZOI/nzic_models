module Loofah
  module Scrubbers
    # rewrites all relative links relative to a root (or image src)
    class NZIC::RootLink < Scrubber
      CANDIDATE_ATTRIBUTES = {'a' => ['href'], 'img' => ['src']}

      attr_accessor :root
      def initialize(root)
        @direction = :top_down
        self.root = root
      end

      def scrub(node)
        return CONTINUE unless (node.type == Nokogiri::XML::Node::ELEMENT_NODE)
        if CANDIDATE_ATTRIBUTES.has_key?(node.name)
          CANDIDATE_ATTRIBUTES[node.name].each do |attr|
            if node.has_attribute?(attr)
              node.set_attribute(attr, rewrite(node.get_attribute(attr).strip))
            end
          end
        end
        return CONTINUE
      end

      private
      def rewrite(original_link)
        uri = URI.parse(original_link)
        if uri.relative? && original_link[0] == '/' # check that it is a root-relative link
          File.expand_path(original_link[1..-1], root) # new link
        else
          original_link
        end
      end
    end
  end
end

