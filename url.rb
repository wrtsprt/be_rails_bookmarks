#!/usr/bin/env ruby

# http://www.railtime.be/website/ShowRoutes.aspx?l=EN&smc=1&arrid=1161&arrl=NL&depid=810&depl=NL&dep=1&st=2014-11-28T16:39:39&stn=1&tt=0&trty=1

time = Time.now
time += (60*60)

puts time

formatted_time = time.strftime("%FT%T")

puts formatted_time


url = "http://www.railtime.be/website/ShowRoutes.aspx?l=EN&smc=1&arrid=1161&arrl=NL&depid=810&depl=NL&dep=1&st=#{formatted_time}&stn=1&tt=0&trty=1"

puts url

%x{echo "#{url}" | pbcopy}



