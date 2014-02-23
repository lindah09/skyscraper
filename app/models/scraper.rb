class Scraper

	def self.scrape 
		response = HTTParty.get('http://www.brainyquote.com/quotes/authors/s/sarah_palin.html')

		quotes = []
		doc = Nokogiri::HTML(response.body)
		doc.css('.bqQuoteLink a').each do |data|
			quotes << data.content
		end
		quotes.sample

	end

end
