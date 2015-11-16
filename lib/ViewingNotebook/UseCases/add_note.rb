module ViewingNotebook
  module UseCases
    class AddNote
      def self.add(title)
        task = Entities::Note.new(title: title)

        if task.valid?
          ViewingNotebook.repo.persist(task)
        else
          false
        end
      end
    end
  end
end
