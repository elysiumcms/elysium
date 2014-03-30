module Elysium
  class PartitionPath
    def initialize(id)
      @id = id
    end

    def path
      ('%09d' % @id).scan(/\d{3}/).join('/')
    end
  end
end
