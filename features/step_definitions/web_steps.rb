require 'uri'
require 'cgi'

module WithinHelpers
  def my
    @my ||= My.new
  end

  def their
    @their ||= My.new
  end

  def repository
    @repository ||= Repository.new(self)
  end
end

World(WithinHelpers)
