require 'uri'
require 'net/http'
require 'openssl'
require 'httparty'
require 'json'


LOGIN_ID = 'dong.760@buckeyemail.osu.edu'
API_KEY = '08a47e9d7755ee290de7197fd692619b73ad57848e0460fce68ba4a803a64d81'


auth_uri = URI("https://devapi.currencycloud.com/v2/authenticate/api")
http = Net::HTTP.new(auth_uri.host, auth_uri.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

puts '\n#############Working with Token #################'
res = Net::HTTP::post_form(auth_uri, 'login_id' => LOGIN_ID, 'api_key' => API_KEY)
token_hash = JSON.parse(res.read_body)
token = token_hash["auth_token"]
puts "Token: #{token}\n"

puts '#############Working with Balances #################'
uri = URI.parse("https://devapi.currencycloud.com/v2/balances/find")
response = HTTParty.get(URI.encode('https://devapi.currencycloud.com/v2/balances/find'),headers:{'X-Auth-Token': token})
balances_hash = JSON.parse(response.body)
balances = balances_hash['balances']
balances.each{|balance| print( "id: #{balance['id']}, currency: #{balance['currency']}, amount: #{balance['amount']}\n")}

puts '#############Working with Rate #################'
puts "Get the convertion of BGNGBP: \n"
response = HTTParty.get(URI.encode('https://devapi.currencycloud.com/v2/rates/find'), query: {'currency_pair': 'BGNGBP'}, headers:{'X-Auth-Token': token})
rate_hash = JSON.parse(response.body)
puts "currency_pair for BGNGBP: #{rate_hash["rates"]["BGNGBP"]}\n"

puts "Get the convertion of BGNUSD: \n"
response = HTTParty.get(URI.encode('https://devapi.currencycloud.com/v2/rates/find'), query: {'currency_pair': 'BGNUSD'}, headers:{'X-Auth-Token': token})
rate_hash = JSON.parse(response.body)
puts "currency_pair for BGNUSD: #{rate_hash["rates"]["BGNUSD"]}\n"

puts "Get the convertion of BGNEUR: \n"
response = HTTParty.get(URI.encode('https://devapi.currencycloud.com/v2/rates/find'), query: {'currency_pair': 'BGNEUR'}, headers:{'X-Auth-Token': token})
rate_hash = JSON.parse(response.body)
puts "currency_pair for BGNEUR: #{rate_hash["rates"]["BGNEUR"]}\n\n"

