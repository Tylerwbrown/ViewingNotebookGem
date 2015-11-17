require "ViewingNotebook/version"
require "ViewingNotebook/UseCases/add_viewing"
require "ViewingNotebook/UseCases/add_note_to_viewing"
require "ViewingNotebook/UseCases/get_viewing"
require "ViewingNotebook/Repository/in_memory"
require 'ViewingNotebook/Entities/viewing'

module ViewingNotebook
  class << self
    attr_accessor :repo

    def configure
      yield self
    end

    def repo
      @repo ||= Repository::InMemory.new
    end

    def get_viewing(index)
      UseCases::GetViewing.single_perform(index)
    end

    def get_viewings
      UseCases::GetViewing.all_perform
    end

    def add_viewing(title)
      UseCases::AddViewing.perform(title)
    end

    def add_note_to_viewing(note, index_of_viewing)
      UseCases::AddNoteToViewing.perform(note, index_of_viewing)
    end
  end
end
