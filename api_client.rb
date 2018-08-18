puts "ingrese el cuerpo de la publicacion"
Post = gets.chomp


require 'faraday'

client = Faraday.new(url:'http://localhost:3000') do |config|
    config.adapter Faraday.default_adapter
    config.token_auth('ff438f4ed508d3cec1c5f756a7113f04')
end

response = client.post do|req|
    req.url'/api/v1/posts'
    req.headers['Content-Type']='application/json'
    req.body = '{"post":{"body":"'+Post+'"}}'
end

=begin
response = client.post do|req|
    req.url'/api/v1/users'
    req.headers['Content-Type']='application/json'
    req.body = '{"user":{"name":"'+name+'"}}'
end
=end

require 'oj'

puts Oj.load(response.body)
puts response.status 

