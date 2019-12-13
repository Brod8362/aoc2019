#!/usr/bin/ruby -w

arrb = File.open("input").read.split(",").map { |s| s.to_i }

j = 0
until j == 100 do
    k=0
    until k == 100 do
        i=0
        arr = arrb.clone
        arr[1]=j
        arr[2]=k
        until arr[i] == 99 do 
            a = arr[arr[i+1]] #readability
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
        if arr[0] == 19690720 then
            puts("1:#{j} 2:#{k}\nFinal:#{(100*j)+k}")
            exit
        end
        k+=1
    end
    j+=1
end
puts("Nothing found")