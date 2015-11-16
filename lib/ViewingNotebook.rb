require "ViewingNotebook/version"

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
