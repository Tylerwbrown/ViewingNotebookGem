module ViewingNotebook
  module UseCases
    class AddNoteToViewing

      def self.perform(note, index_of_viewing)
        viewing = ViewingNotebook.get_viewing(index_of_viewing)
        viewing.add_note(note)
      end

    end
  end
end
