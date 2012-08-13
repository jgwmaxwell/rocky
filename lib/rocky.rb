module Rocky
  autoload :Version, "rocky/version"
  autoload :Base, "rocky/base"
  autoload :Slug, "rocky/slug"
  autoload :Errors, "rocky/errors"
  autoload :Finders, "rocky/finders"
  autoload :Utils, "rocky/utils"
  
  class << self
    def included(klass)
      klass.send :extend, Base
      klass.send :extend, Finders
      klass.send :include, Utils
    end
    
    def extended(klass)
      klass.send :extend, Base
      klass.send :extend, Finders
      klass.send :include, Utils
    end
  end
end
