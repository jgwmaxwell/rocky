module Rocky
	module Base
    attr_accessor :rocky_slug_column, :rocky_create_check_method, :rocky_fallback_id_method, :rocky_slug_field
    mattr_accessor :rocky_host
    
    def rocky(field, opts={})
      raise Errors::IncorrectConfigurationError unless opts.has_key?(:column) && field.present?
      @rocky_slug_field = field
      @rocky_fallback_id_method = opts[:fallback_id_method] || :id
      @rocky_create_check_method = opts[:should_create_slug] || "#{field}_changed?".to_sym
      @rocky_slug_column = opts[:column]
      
      self.rocky_host.send :set_callback, :save, :before do |doc|
        doc.send("#{self.class.rocky_slug_column}=", "#{Slug.new(doc).slugged}") if doc.send(self.class.rocky_create_check_method.to_sym) && doc.send("#{self.class.rocky_slug_column}.nil?")    
      end
      
      if @rocky_fallback_id_method == :uuid || "uuid"
        self.rocky_host.send :set_callback, :create, :before do |doc|
          doc.uuid = "#{Moped::BSON::ObjectId.new}"
        end
      end
    end
    
    def self.extended(klass)
      self.rocky_host = klass        
    end
    
	end
end