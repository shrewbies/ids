require 'mysql2'
require 'csv'

#puts "What IP address do you want to query?"

#IP = gets.chomp


	dbh = Mysql2::Client.new(:host => 'sparrow.sr.unh.edu', :database => "securityonion_db", :username => "root", :password => 'redrabbit12')

	
	res = dbh.query("SELECT signature, signature_id,timestamp,INET_NTOA(src_ip) ,INET_NTOA(dst_ip) FROM event limit 10")
	

      CSV.open('test.xls','w') do |f|
      	f << res.fields
	    res.each do |result|
	  		f << result.values
		end
	  end


	
dbh.close if dbh

