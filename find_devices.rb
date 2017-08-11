require 'pry'
network = `sudo arp-scan --interface=en0 --localnet`
#puts network
network_devices = network.split ("\n")
# puts network_devices.inspect


just_network_devices = network_devices[2..network_devices.length-4].map{ |line|
  puts line
  # device = {}
  # device[:ip] = line.split("\t")[0]
  # device[:name] = line.split("\t")[2]
  # device
  line
}

puts just_network_devices
# just_network_devices.each {|device| puts device[:ip] }
# puts just_network_devices.inspect
# ips = just_network_devices.map{|device| device[:ip] }
#
# raspberry_pi = just_network_devices.find{|device| device[:name] == "Raspberry Pi Foundation" }
#
# puts "RPI"
#
# puts raspberry_pi[:ip]
#
# unknown_devices = just_network_devices.select{|device| device[:name] == "(Unknown)" }
#
# puts unknown_devices.inspect

# puts ips.inspect
# puts just_network_devices.inspect
# binding.pry
