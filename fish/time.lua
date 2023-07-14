#!/usr/bin/env lua

time = arg[1]
time_in_seconds = time/1000

function convert_time(num1)
  hours = math.fmod(num1,86400)//3600
  minutes = math.fmod(num1,3600)//60
  seconds = math.fmod(num1,60)
  return math.floor(hours), math.floor(minutes), math.floor(seconds)
end

hours, minutes, seconds = convert_time(time_in_seconds)

if time_in_seconds < 60 then 
  io.write(seconds, 's')
elseif hours < 1 then 
  io.write(minutes,'m',seconds)
else 
  io.write(hours,':',minutes,':',seconds)
end 
