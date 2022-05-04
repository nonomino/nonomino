#!/usr/bin/ruby
require 'nokogiri'
require 'byebug'
require 'open-uri'
require 'json'
require 'pp'
class Scrapes
  def thisScrapes
      pURL = "https://infosys.com"
      doc = Nokogiri::HTML(URI.open(pURL))
      anchors = doc.css('a')
      metadesc = doc.at('meta[name="description"]')
      puts "The DESCRIPTION is: "
      puts metadesc
      urls = Array.new
          anchors.each do | anchor |
         # puts anchor.text
          puts pURL +  anchor['href']
         puts " "
         urls << anchor.text
         end
  JSON.pretty_generate(urls)
  jsonfile = File.open("/storage/emulated/0/Data/Ruby/jsondata.json", "r+") do |f|
  PP.pp(self, f)
  end
    jsonfile.syswrite(urls)
end
scrapeObject = Scrapes.new
scrapeObject.thisScrapes;
byebug
end
