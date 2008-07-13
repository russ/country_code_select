require 'country_code_select/countries'
require 'country_code_select/form_builder'
require 'country_code_select/form_helpers'
require 'country_code_select/instance_tag'

ActionView::Base.send(:include, CountryCodeSelect::FormHelpers)
ActionView::Helpers::InstanceTag.send(:include, CountryCodeSelect::InstanceTag)
ActionView::Helpers::FormBuilder.send(:include, CountryCodeSelect::FormBuilder)
