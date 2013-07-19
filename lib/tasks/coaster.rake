# require 'nokogiri'
# require 'open-uri'

# namespace :coaster do
#   desc "TODO"
#   task :scrape_all => :environment do
#     #I can put arbitrary Ruby code in here, and it can access all my database models.
#     # This is a good place to put my scraper
#     # Eventually want to iterate over all coasters.
#     # It appears we have 1...11511 coaster, but some of those are people

#     doc = Nokogiri::HTML(open('http://rcdb.com/4529.htm'))

#     # tbody/tr[1]/td[2]


#     # Name of Coaster
#     category = doc.xpath('//tr[1]/td[1]')[6].content
#     if category == "Roller Coaster: "
#         coaster_name = doc.xpath('//tr[1]/td[2]')[3].content.split(' (')[0]
#         # binding.pry
#         park_name = doc.xpath('//tr[2]/td[2]/a').children.first.text
#         puts "Coaster: #{coaster_name} (Park: #{park_name})"
#     elsif category == "Amusement Park: "
#         park_name = doc.xpath('//tr[1]/td[2]')[3].content.split(' (')[0]
#         if doc.xpath('//tr[2]/td[1]')[4].content == "Location: "
#             puts "wheee"
#         elsif doc.xpath('//tr[3]/td[1]')[1].content == "Location: "
#             puts "That's what I'm talkin' about!"
#         end
#         puts "Park: #{park_name}"
#     end
#     # Cost
#     # doc.xpath('//tr[9]/td[2]').each do |link|
#     #   puts link.content
#     # end
#   end

# end

