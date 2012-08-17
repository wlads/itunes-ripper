#!/usr/bin/env ruby -wKU 
require "rubygems"
require "open-uri"
require "nokogiri"
 
app_id = ARGV[0] ? ARGV[0] : 338227344
BASE_ITUNES_URL = "http://itunes.apple.com/us/app/id#{app_id}?mt=8"
DATA_DIR = "output"
IPHONE_SELECTOR = ".iphone-screen-shots img"
IPAD_SELECTOR = ".ipad-screen-shots img"

def main  
  Dir.mkdir(DATA_DIR) unless File.exists?(DATA_DIR)
  
  document = Nokogiri::HTML(open(BASE_ITUNES_URL))

  iphone_screenshots = document.css(IPHONE_SELECTOR)
  ipad_screenshots = document.css(IPAD_SELECTOR)

  puts "\n"+"="*30
  puts "iphone-screenshots: #{iphone_screenshots.size}"
  puts "="*30
  get_images(iphone_screenshots)

  puts "\n"+"="*30
  puts "ipad-screenshots: #{ipad_screenshots.size}"
  puts "="*30
  get_images(ipad_screenshots)
end

# puts iphone_screenshots.class => Nokogiri::XML::NodeSet
def get_images(node_set)
  node_set.each do |node|
    src = node['src']
    puts "fetching #{src}"
    
    open(File.join(DATA_DIR, File.basename(src)), 'wb') do |file|
      file << open(src).read
    end
    
    puts "...done!"
  end
end

main