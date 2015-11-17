module ViewingNotebook
  module UseCases
    class GetViewing

      def self.single_perform(index)
        if (!all_perform.empty?)
          self.all_perform[index]
        end
      end

      def self.all_perform
        ViewingNotebook.repo.viewings
      end

    end
  end
end
