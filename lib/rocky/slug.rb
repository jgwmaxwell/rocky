require 'babosa'
module Rocky
	class Slug
    attr_accessor :slugged
    def initialize(sluggable)
      column = sluggable.class.rocky_slug_column
      field = sluggable.class.rocky_slug_field
      
      raw_slug = sluggable.send(field)
      @slugged = raw_slug.to_slug.normalize
    end
	end
end