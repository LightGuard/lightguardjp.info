
Awestruct::Extensions::Pipeline.new do
  extension Awestruct::Extensions::Posts.new( '/tech' ) 
  extension Awestruct::Extensions::Posts.new( '/religious' ) 
  extension Awestruct::Extensions::Posts.new( '/misc' ) 
  extension Awestruct::Extensions::Disqus.new()
  extension Awestruct::Extensions::Indexifier.new
  extension Awestruct::Extensions::Atomizer.new(:tech, '/tech/feed.atom')
  extension Awestruct::Extensions::Atomizer.new(:misc, '/misc/feed.atom')
  extension Awestruct::Extensions::Atomizer.new(:religious, '/religious/feed.atom')

  # TODO: Tags

  helper Awestruct::Extensions::GoogleAnalytics
end

