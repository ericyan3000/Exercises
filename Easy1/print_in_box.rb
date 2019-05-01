def print_in_box(str)
	length = str.length + 2
	print "+" + "-"*(length) + "+\n"
	print "|" + " "*(length) + "|\n"
	print "| " + str + " |\n"
	print "|" + " "*(length) + "|\n"
	print "+" + "-"*(length) + "+\n"
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
