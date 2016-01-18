require 'rom/relation'

module Relations
  class Users < ROM::Relation[:memory]
    register_as :users
  end
end
