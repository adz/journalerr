require 'rom'
require 'rom/memory'

module Journalerr
  def self.setup
    return @container if @container
    configuration = ROM::Configuration.new(:memory, 'memory://test')
    configuration.auto_registration(__dir__)
    @container = ROM.container(configuration)
  end
end
