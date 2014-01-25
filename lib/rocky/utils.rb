module Rocky
	module Utils
	  # declares the parameterized version of the model name
    def to_param
      if !send(self.class.rocky_slug_column).nil?
        self.send(self.class.rocky_slug_column)
      elsif self.class.rocky_fallback_id_method == :uuid
        self.uuid
      else
        self.id
      end
    end
	end
end
