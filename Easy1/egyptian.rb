def egyptian_test(rat)
	if rat == 2
		return [1, 2, 3, 6]
	else
		egyptian_core(rat, 0)
	end
end

def egyptian_core(rat, prev)
	# edge case
	if rat.numerator == 1
		return [rat.denominator]
	# call egyptian after subtracting the next biggest unit fraction
    else
    	next_denominator = (1 / rat).ceil
    	next_denominator += (prev-next_denominator+1) if next_denominator <= prev
    	next_rat = (rat - Rational(1,next_denominator)).to_r
    	return [next_denominator, egyptian_core(next_rat, next_denominator)].flatten
    end
end

def egyptian(rat)
	result = []
	unit_denominator = 1
	target_value = rat
	# keep subtracting 1/# until it's reduced to 0
	until target_value == 0
		unit_fraction = Rational(1,unit_denominator)
		if unit_fraction <= target_value
			target_value -= unit_fraction
			result << unit_denominator
		end
		unit_denominator += 1	
	end
	result

end


p egyptian(Rational(2, 1))    # -> [1, 2, 3, 6]
p egyptian(Rational(1,1))
p egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
p egyptian(Rational(3, 1))
p egyptian_test(Rational(3,1))
p egyptian_test(Rational(2,1))
p egyptian_test(Rational(1,1))