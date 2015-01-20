%w(nokogiri pathname open-uri).each { |gem| require gem }

require_relative 'tinycc_client'

class Updater < TinyccClient
  attr :hash
  def initialize(login, api_key, hash)
    super(login, api_key)
    @hash = hash
  end

  def update_if_necessary
    if url_from_file != url_from_site
      update_url(url_from_site)
    end
  end

  def url_from_site
    @url_from_site ||= get_url_from_site
  end

  def url_from_file
    url_file.read if url_file.exist?
  end

  def url_file
    Pathname.new('url.txt')
  end

  def update_url(new_url)
    url_file.write(new_url)
    puts edit(new_url, hash)
  end

  def get_url_from_site
    doc = Nokogiri::HTML(open('http://www.rstudio.com/products/rstudio/download/preview/'))
    doc.css('table.downloads').first.css('a[href*=dmg]').attr('href').to_s
  end

end

