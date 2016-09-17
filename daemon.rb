require 'net/http'
require 'json'
require 'date'
require 'pp'

login_id = 'muscle808'

sensor_host = '192.168.100.172'
sensor_port = 4035
service_id = 'Wear-a19f8253.4ef292125eff35e11c4bf1f6d57d6f38.localhost.deviceconnect.org'
access_token = 'null'

# server_host = 'localhost'
# server_port = 4567
server_host = '13.78.121.236'
server_port = 8080

req = Net::HTTP::Get.new("/gotapi/deviceorientation/ondeviceorientation?serviceId=#{service_id}&accessToken=#{access_token}")
# puts ['x', 'y', 'z', 'alpha', 'beta', 'gamma'].join("\t")
i = 1

prev = nil
loop do
  begin
    res = Net::HTTP.start(sensor_host, sensor_port) do |http|
      http.request(req)
    end
    json = JSON.parse(res.body)
    a = json['orientation']['accelerationIncludingGravity']
    # r = json['orientation']['rotationRate']
    # puts [a['x'], a['y'], a['z'], r['alpha'], r['beta'], r['gamma']].join("\t")
    # $stderr.puts [a['x'], a['y'], a['z'], r['alpha'], r['beta'], r['gamma']].join("\t")

    # prev = a['z'] if prev.nil?

    # if (prev - a['z']).abs > 1.5
    #   puts "#{i}\t#{a['z']}"
    #   prev = a['z']
    # end

    x = a['x']
    # $stderr.puts x
    prev = x if prev.nil?
    # flag = ((prev * x) < 0 and x > 0) ? ' << COUNT' : ''
    if (prev * x) < 0 and x < 0
      dt = DateTime.now.strftime('%Y%m%d%H%M%S')
      count_up_req = Net::HTTP::Post.new("/countup/#{login_id}?dt=#{dt}")
      Net::HTTP.start(server_host, server_port) do |http|
        http.request(count_up_req)
      end
      puts "COUNT: #{dt}"
    end
    prev = x if (prev * x) < 0

    i += 1
    sleep 0.1
  rescue => e
    p e
  end
end

# http://192.168.100.172:4035/gotapi/deviceorientation/ondeviceorientation?serviceId=Wear-a19f8253.4ef292125eff35e11c4bf1f6d57d6f38.localhost.deviceconnect.org&accessToken=null
# http://192.168.100.172:4035/gotapi/health/heartrate?serviceId=F3%3A3B%3A15%3A7E%3A29%3ABB.e9484eb5107adfef1af6a0dc65c03232.localhost.deviceconnect.org&accessToken=null
