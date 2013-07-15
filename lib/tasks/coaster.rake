require 'nokogiri'
require 'open-uri'

namespace :coaster do
  desc "TODO"
  task :scrape_all => :environment do
    #I can put arbitrary Ruby code in here, and it can access all my database models.
    # This is a good place to put my scraper
    # Eventually want to iterate over all coasters.
    # It appears we have 1...11511 coaster, but some of those are people

    doc = Nokogiri::HTML(open('http://rcdb.com/1.htm'))

    # tbody/tr[1]/td[2]


    # Name of Coaster
    coaster_name = doc.xpath('//tr[1]/td[2]')[3].content

    # Cost
    # doc.xpath('//tr[9]/td[2]').each do |link|
    #   puts link.content
    # end
  end

end
