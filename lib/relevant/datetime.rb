require "relevant/widget"

module Relevant
  class Datetime
    Version = "0.0.1"
    include Relevant::Widget
    
    available_options :format => :string
    
    refresh_every 1.minute
    
    template_format :haml
    template %q[
%span.datetime= Time.zone.now.strftime(options[:format])
:css
  span.datetime {
    display: block;
    text-align: center;
    font-size: 4em;
    line-height: 1.1em;
    font-family: "Gill Sans", Helvetica, Arial;
  }
    ]

  end
end

Relevant.register Relevant::Datetime