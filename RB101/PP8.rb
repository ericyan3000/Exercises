hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

hsh.each_value {|val1|
	val1.each {|str|
		str.chars.each {|char|
			puts char if 'aeiou'.include?(char)
		}
	}
}

