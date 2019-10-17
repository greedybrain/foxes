require 'open-uri'

url = 'https://nokogiri.org/tutorials/parsing_an_html_xml_document.html'

html = open(url)

# open(url) {|f|
# binding.pry
#   f.each_line {|line| p line}
# }

# binding.pry