require File.dirname(__FILE__) + '/spec_helper'

describe CountryCodeSelect::FormHelpers do
	it "should include country_code_select method" do
		ActionView::Helpers::FormBuilder.instance_methods.should include('country_code_select')
	end
end
