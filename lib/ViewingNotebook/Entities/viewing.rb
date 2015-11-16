module ViewingNotebook
  module Entities
    class Viewing
      attr_accessor :id
      attr_reader :title, :notes, :images

      def initialize(title: '')
        @title = title
        @notes = {}
        @images = {}
      end

      def add_note(note)
        @notes << note
      end

      def add_image(image)
        @images << image
      end

      def valid?
        String(title).length > 0
      end
    end
  end
end
