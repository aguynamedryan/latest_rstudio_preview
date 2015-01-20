%w(dotenv).each { |gem| require gem }
require_relative 'updater'

Dotenv.load
Updater.new(ENV['USERNAME'], ENV['API_KEY'], ENV['URL_HASH']).update_if_necessary
