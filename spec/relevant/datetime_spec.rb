require 'spec_helper'

describe Relevant::Datetime do
  
  it 'displays the time given a strftime format' do
    widget = Relevant::Datetime.setup :format => '%m/%d/%Y'
    widget.to_html.should include(Time.zone.now.strftime('%m/%d/%Y'))
  end
  
end