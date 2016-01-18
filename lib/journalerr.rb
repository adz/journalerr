require 'rom'
require 'rom/memory'

require 'relations/users'

module Journalerr
  def self.setup
    return @container if @container
    configuration = ROM::Configuration.new(:memory, 'memory://test')


    # Fails with: cannot load such file -- lib/relations/users.rb
    #configuration.auto_registration('lib')

    # Fails to register any relation
    #configuration.auto_registration('.')

    # This works, with require 'relations/users' at top
    configuration.register_relation(Relations::Users)
    @container = ROM.container(configuration)
  end
end
