require 'grell'

crawler = Grell::Crawler.new
crawler.start_crawling('http://www.rubygems.org') do |page|
  #Grell will keep iterating this block which each unique page it finds
  puts "yes we crawled #{page.url}"
  puts "status: #{page.status}"
  puts "headers: #{page.headers}"
  puts "body: #{page.body}"
  puts "We crawled it at #{page.timestamp}"
  puts "We found #{page.links.size} links"
  puts "page id and parent_id #{page.id}, #{page.parent_id}"
end
