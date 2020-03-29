#!/usr/bin/env ruby


$pb_log_enabled = false
$pb_log_file = File.dirname(__FILE__) + "/other/log/pentbox_log_" + ENV['USER'] + ".log"


# Default -> true
$protected_mode = true

# $text_color variable.
# When true, titles and warnings will be colorful,
# else it will be with default colors.

# Default -> true
$text_color = true

###########################

##### Loading time
dir = File.dirname(__FILE__)
require dir + "/lib/pb_proced_lib.rb" # Common procedures and functions.

version = "1.8"
Signal.trap("INT") do
	puts ""
	puts "[*] EXITING ..."
	puts ""
	pb_write_log("exiting", "Core")
	exit
end
#####

pb_write_log("pentbox loaded", "Core")

srand(Time.now.to_i)
banner = rand(4)

#puts ""
title "\n Minor 2 "



sleep(0.25)
option1 = ""

while option1 != "5"
	module_exec = true
	puts ""
	puts "\n\n\n\n\n    Aaryash-Samarth-Mridul" + " "*18 + "    					 ruby#{RUBY_VERSION} @ #{RUBY_PLATFORM}\n\n\n\n\n"

		puts "	MM     MM   IIIIIII   NN   NN    OOOOO    RRRRRR     22222   "
		puts "	MMM   MMM     III     NNN  NN   OO   OO   RR   RR   222 222   "
		puts "	MM MMM MM     III     NN N NN   OO   OO   RRRRRR        222  "
		puts "	MM     MM     III     NN  NNN   OO   OO   RR  RR     2222    "
		puts "	MM     MM   IIIIIII   NN   NN    OOOO0    RR   RR   22222222  "

	puts "\n\n\n\n"
	puts "	Press 2 to enter into the Network Tools."
	puts ""
	print "	-> "
	option1 = gets_pb.chomp
	puts ""

	case option1

		when "2"
			puts "	Press 3 to Setup a Honeypot"
			puts "	0 - Back"
			puts ""
			print "	   -> "
			option2 = gets_pb.chomp
			case option2
				when "0"
					module_exec = false
				when "1"
					if haspermission() == true
						require "#{dir}/tools/network/net_dos.rb"
						Network_pb::Net_dos_pb.new()
					else
						module_exec = false
						puts ""
						puts "Sorry, you don't have permissions to run this module (root?)."
						puts ""
					end
				when "2"
					require "#{dir}/tools/network/port_scanner.rb"
					Network_pb::Port_scanner_pb.new()
				when "3"
					require "#{dir}/tools/network/honeypot.rb"
					Network_pb::Honeypot_pb.new()
				when "4"
					require "#{dir}/tools/network/fuzzer.rb"
					Network_pb::Fuzzer_pb.new()
				when "5"
					require "#{dir}/tools/network/dns_search.rb"
					Network_pb::DNS_search_pb.new()
				when "6"
					require "#{dir}/tools/network/samy_mac_loc.rb"
					Network_pb::Samy_mac_loc_pb.new()
				else
					module_exec = false
					puts ""
					puts "	Invalid option."
					puts ""
			end
		when "3"
			puts "1- HTTP directory bruteforce"
			puts "2- HTTP common files bruteforce"
			puts ""
			puts "0- Back"
			puts ""
			print "   -> "
			option2 = gets_pb.chomp
			case option2
				when "0"
					module_exec = false
				when "1"
					require "#{dir}/tools/web/http_brute_dir.rb"
					Web_pb::HTTP_brute_dir_pb.new()
				when "2"
					require "#{dir}/tools/web/http_brute_files.rb"
					Web_pb::HTTP_brute_files_pb.new()
				else
					module_exec = false
					puts ""
					puts "Invalid option."
					puts ""
			end
		when "4"
module_exec = false
puts "
    X------------------------------------X
    | Copyright (C) 2012, 2013, 2014     |
    |                                    |
    |   Minzsec                          |
    |   www.facebook.com/rootnameshadow  |
    X------------------------------------X
    PenTBox is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.
    PenTBox is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.
    You should have received a copy of the GNU General Public License
    along with PenTBox. Or you need some confuguration If not, see <http://www.gnu.org/licenses/>.
"
		when "5"
			module_exec = false
			Process.kill("SIGINT", Process.pid()) # Just exit.
		else
			module_exec = false
			puts ""
			puts "Invalid option."
			puts ""
	end
	if module_exec == true
		puts ""
		puts "[*] Module execution finished."
		puts ""
	end
end
