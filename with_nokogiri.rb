class Search
  require 'nokogiri'
  require 'open-uri'

  attr_accessor :keyword

  def initialize(keyword=nil)
    @keyword = keyword
  end

  def get_keyword(empty=true)
    puts
    if empty
      print "Please input your searching keyword: "
    else
      print "Your search  #{self.keyword}  did not match any documents.Make sure all words are spelled correctly.\n Please input your searching keyword: "
    end
    self.keyword = gets.chomp.strip
    process_searching
  end

  def process_searching
    return get_keyword if self.keyword.empty?
    search_url = URI.encode "http://www.google.com/search?q=#{self.keyword}" rescue nil
    return get_keyword unless search_url

    puts
    puts ["You are searching", '    ',  self.keyword,  '    ', ', please wait.'].join
    puts


    processed  = Nokogiri::HTML(open(search_url))
    stat       = processed.css('#resultStats').text
    result_count = stat.split(' ')[1] rescue nil

    if !result_count
      get_keyword(false)
    else
      puts
      puts "共#{result_count}个记录，前三条记录为："
      puts
      first_three_items = processed.css('li.g').first(3)
      first_three_items.each do |item|
        title = item.css("h3.r").text
        href = item.css("cite").text
        puts
        puts title
        puts href
        puts
      end
    end
  end
end

###执行入口
Search.new(ARGV.join(' ')).process_searching



