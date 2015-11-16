module ViewingNotebook
  module UseCases
    class AddViewing
      def self.add(title)
        task = Entities::Viewing.new(title: title)

        if task.valid?
          ViewingNotebook.repo.persist(task)
        else
          false
        end
      end
    end
  end
end
