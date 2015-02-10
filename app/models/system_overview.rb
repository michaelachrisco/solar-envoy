require 'nokogiri'
require 'open-uri'
require 'time'

class SystemOverview < ActiveRecord::Base
  def populate_data
    # @doc = Nokogiri::HTML(open('/Users/michaelchrisco/solar/website/home.html'))
    @doc = Nokogiri::HTML(open(Figaro.env.home_url))
    # self.lifetime_generation = @doc.xpath('//td')[13].content.tr('MWh','').tr(' ','').to_f
    # self.currently_running  = @doc.xpath('//td')[15].content.tr('Kw','').tr(' ','').to_f
    self.lifetime_generation = @doc.xpath('//td')[13].content
    self.currently_running  = @doc.xpath('//td')[15].content
    self.last_connection_to_website = @doc.xpath('//td')[17].content
    self.number_of_microinverters = @doc.xpath('//td')[19].content.to_i
    self.number_of_microinverters_online = @doc.xpath('//td')[21].content.to_i
    self.current_software_version = @doc.xpath('//td')[23].content
    self.software_build_date = @doc.xpath('//td')[25].content.to_time
    self.database_size = @doc.xpath('//td')[27].content.tr('MB', '').tr(' ', '').to_i
    self.current_timezone = @doc.xpath('//td')[29].content
    self.envoy_ip_address = @doc.xpath('//td')[31].content
    self.envoy_mac_address = @doc.xpath('//td')[33].content
    self.envoy_power_line_device = @doc.xpath('//td')[35].content
    self
  end

  def find_content
    @num = 0
    @doc.xpath('//td').each do |link|
      puts 'td[' + @num.to_s + "]: #{link.content}"
      @num += 1
    end
  end
end
