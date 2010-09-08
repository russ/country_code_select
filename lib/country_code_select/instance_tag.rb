module CountryCodeSelect
	module InstanceTag
		include Countries

		def to_country_code_select_tag(priority_countries, options = {})
			country_code_select(priority_countries, options)
		end

		# Adapted from Rails country_select. Just uses country codes instead of full names.
		def country_code_select(priority_countries, options)
			selected = object.send(@method_name)

			countries = ''
			if priority_countries
				countries += options_for_select(priority_countries, selected)
				countries += "<option value=\"\" disabled=\"disabled\">-------------</option>\n"
			end

			countries = countries + options_for_select(COUNTRIES, selected)
      if Rails::VERSION::STRING.to_f < 3
        content_tag(:select, countries, options.merge(:id => "#{@object_name}_#{@method_name}", :name => "#{@object_name}[#{@method_name}]"))
      else
        content_tag(:select, countries, options.merge(:id => "#{@object_name}_#{@method_name}", :name => "#{@object_name}[#{@method_name}]"), false)
      end
		end
	end
end
