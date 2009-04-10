module CountryCodeSelect
	module FormHelpers
		def country_code_select(object_name, method, priority_countries = nil, options = {})
			ActionView::Helpers::InstanceTag.new(object_name, method, self, options.delete(:object)).to_country_code_select_tag(priority_countries, options)
		end
	end
end
