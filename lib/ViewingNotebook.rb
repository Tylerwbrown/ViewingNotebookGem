require "ViewingNotebook/version"
require "ViewingNotebook/UseCases/add_viewing"
require "ViewingNotebook/UseCases/add_note_to_viewing"
require "ViewingNotebook/Repository/in_memory"

module ViewingNotebook
  class << self
    attr_accessor :repo

    def configure
      yield self
    end

    def repo
      @repo ||= Repository::InMemory.new
    end

    def add_viewing(title)
      UseCases::AddViewing.add(title)
    end
  end
end
