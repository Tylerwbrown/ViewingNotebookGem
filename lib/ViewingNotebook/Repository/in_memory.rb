module ViewingNotebook
  module Repository
    class InMemory
      attr_reader :viewings
      
      def initialize
        @viewings = {}
        @id = 0
      end

      def persist(viewing)
        @id += 1
        viewing.id = @id
        viewings[@id] = viewing
        viewing
      end

      def count
        viewings.length
      end

    end
  end
end
