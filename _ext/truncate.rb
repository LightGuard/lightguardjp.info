require 'rubygems'
require 'html_truncator'

module Awestruct
  module Extensions
    module Truncate
      def truncate(content, length = 250)
        begin
          HTML_Truncator.truncate(content, length)
        rescue Exception => e
          puts "ERROR: #{e}"
        end
      end 
    end
  end
end
