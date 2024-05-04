#!/usr/bin/env ruby

def extract(text)
	sender = text.match(/\[from:(\[^[\]]*)\]/)[1]
	receiver = text.match(/\[to:(\[^[\]]*)\]/)[1]
	flags = text.match(/\[flags:(\[^[\]]*)\]/)[1]
	"#{sender},#{receiver},#{flags}"
end

puts extract(ARGV[0])
