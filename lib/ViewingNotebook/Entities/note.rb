module ViewingNotebook
  module Entities
    class Note
      attr_accessor :id
      attr_reader :title

      def initialize(title: '')
        @title = title
      end

      def valid?
        String(title).length > 0
      end
    end
  end
end
