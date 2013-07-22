require 'truncate'
require 'slim'
require 'asciidoctor'

Awestruct::Extensions::Pipeline.new do
  extension Awestruct::Extensions::Posts.new('/tech', :tech) 
  extension Awestruct::Extensions::Posts.new('/religious', :religious) 
  extension Awestruct::Extensions::Posts.new('/misc', :misc) 
  extension Awestruct::Extensions::Disqus.new()
  extension Awestruct::Extensions::Indexifier.new
  extension Awestruct::Extensions::Atomizer.new(:tech, '/tech/feed.atom')
  extension Awestruct::Extensions::Atomizer.new(:misc, '/misc/feed.atom')
  extension Awestruct::Extensions::Atomizer.new(:religious, '/religious/feed.atom')

  # TODO: Tags

  helper Awestruct::Extensions::GoogleAnalytics
  helper Awestruct::Extensions::Truncate

  transformer Awestruct::Extensions::Minify.new
end

