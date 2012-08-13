module Rocky
	module Finders
    def find(id)
      if Moped::BSON::ObjectId.legal?(id)
        where(:uuid => id).first
      elsif !!(id.to_s =~ /^[-+]?[0-9]+$/)
        super
      else
        where("#{self.rocky_slug_column}" => id).first
      end
    end
	end
end