module CountryCodeSelect
	module InstanceTag
		include Countries

		def to_country_code_select_tag(priority_countries, options = {})
			country_code_select(priority_countries, options)
		end

		def country_code_select(priority_countries, options)
			selected = object.send(@method_name)

			country_options = ''
			if priority_countries
				country_options += options_for_select(priority_countries, selected)
				country_options += "<option value=\"\" disabled=\"disabled\">-------------</option>\n"
			end

			options = country_options + options_for_select(COUNTRIES, selected)
   		content_tag(:select, options, :id => "#{@object_name}_#{@method_name}", :name => "#{@object_name}[#{@method_name}]")
		end
	end
end
