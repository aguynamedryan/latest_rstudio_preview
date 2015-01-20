%w(httparty).each { |gem| require gem }

class TinyccClient
  include HTTParty
  base_uri 'tiny.cc'

  attr :options

  def initialize(login, api_key)
    @options = {
      c: 'rest_api',
      login: login,
      apiKey: api_key,
      version: '2.0.3',
      format: 'json'
    }
  end

  def shorten(long, short = nil)
    my_opts = {
      m: 'shorten',
      longUrl: long
    }
    opts = options.merge(my_opts)
    self.class.get("/", query: opts)
  end

  def edit(long, hash, short = nil)
    my_opts = {
      m: 'edit',
      longUrl: long,
      hash: hash
    }
    my_opts[:shortUrl] = short if short
    opts = options.merge(my_opts)
    self.class.get("/", query: opts)
  end

end
