module CountryCodeSelect
	module FormBuilder
		def country_code_select(method, priority_countries = nil, options= {})
			@template.country_code_select(@object_name, method, priority_countries, options.merge(:object => @object))
		end
	end
end
