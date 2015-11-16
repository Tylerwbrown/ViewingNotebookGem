module ViewingNotebook
  module UseCases
    class AddViewing
      def self.add(title)
        viewing = Entities::Viewing.new(title: title)

        if viewing.valid?
          ViewingNotebook.repo.persist(viewing)
        else
          false
        end
      end
    end
  end
end
