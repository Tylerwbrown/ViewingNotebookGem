module ViewingNotebook
  module UseCases
    class AddNoteToViewing

      def self.perform(note, index_of_viewing)
        viewing = ViewingNotebook.get_viewing(index_of_viewing)
        self.perform_with_viewing(note, viewing)
      end

      def self.perform_with_viewing(note, viewing)
        viewing.add_note(note)
      end
    end
  end
end
