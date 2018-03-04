require 'aviation_14_CFR/version'
require 'nokogiri'

module Aviation14CFR
  def self.file_contents(vol=1)
    File.read("data/CFR-2017-title14-vol#{vol}.xml")
  end

  def self.data(vol=1)
    Nokogiri::XML(self.file_contents(vol))
  end
end
