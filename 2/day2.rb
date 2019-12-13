#!/usr/bin/ruby -w

arr = File.open("input").read.split(",").map { |s| s.to_i }
i = 0
arr[1]=12
arr[2]=2
until arr[i] == 99 do 
    a = arr[arr[i+1]] #for readability's sake 
    b = arr[arr[i+2]]
    case arr[i]
    when 1 
        arr[arr[i+3]] = a+b
    when 2
        arr[arr[i+3]] = a*b
    else
        abort("unexpected opcode #{arr[i]}")
    end
    i+=4
end
puts(arr[0])