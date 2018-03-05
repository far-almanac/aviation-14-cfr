require 'aviation_14_CFR/version'
require 'nokogiri'

module Aviation14CFR
  def self.file_contents(vol=1)
    File.read("data/CFR-2017-title14-vol#{vol}.xml")
  end

  def self.nodes
    nodes = []
    self.volumes.each { |vol|
      Nokogiri::XML(self.file_contents(vol)).traverse do |n|
        nodes.push(n)
      end
    }
    nodes
  end

  def self.foo
    #x.xpath("/CFRDOC/TITLE/CHAPTER/SUBCHAP[1]/PART[2]/SUBPART[1]/SECTION[37]").children[1].children[0].text.start_with?('§ 61')
    self.nodes.collect { |node|
      begin
        node if node.children[1].children[0].text.start_with?('§ 91')
      rescue
      end
    }.reject { |c| c.nil? }
  end

  def self.list_regs(arr)
    arr.each do |x|
      puts x.children[1].text
    end
  end

  def self.volumes
    Dir["data/*.xml"].collect { |file|
      file.match(/(CFR-2017-title14-vol)([0-9]{1,5})*(.xml)*/)[2]
    }.sort
  end

end
