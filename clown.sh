#!/bin/bash
ruby -e 'rows, cols = `stty size`.scan(/\d+/).map(&:to_i); S=["1F921".to_i(16)].pack("U*"); a={}; puts "\033[2J"; loop { a[rand(cols)] = 0 if rand < cols / 200.0 && a.size < cols; a.each { |x, o| if o >= rows - 1; print "\033[#{o};#{x}H "; a.delete(x); else a[x] += 1; print "\033[#{o};#{x}H \033[#{a[x]};#{x}H#{S} \033[0;0H"; end }; $stdout.flush; sleep 0.1 }'
