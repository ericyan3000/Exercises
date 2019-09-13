=begin
 input: string
 output: boolean
 rule: letters from the same block in a given table could only be used once
       only one letters from the block could be used once
       return true or false

 data structure: table -> hash PAIR
                 string -> array

 algorithm: 1.create a block table
            2. any block used more than once? string.count(block); block.any?


PAIR = {'B':'O',   'X':'K',   'D':'Q',   'C':'P',   'N':'A',
        'G':'T',   'R':'E',   'F':'S',   'J':'W',   'H':'U',
        'V':'I',   'L':'Y',   'Z':'M'}.freeze

def block_word?(str)
  letters = str.chars
  used = []
  letters.each do |e|
    if PAIR.has_key?(e.to_sym)
      if letters.include?(PAIR[e.to_sym])
        return false 
    end
    return false if used.include?(e)
    used << e
  end
  true
end

BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

def block_word?(string)
  up_string = string.upcase
  BLOCKS.none? { |block| up_string.count(block) >= 2 }
end
=end

PAIR = {'B':'O',   'X':'K',   'D':'Q',   'C':'P',   'N':'A',
        'G':'T',   'R':'E',   'F':'S',   'J':'W',   'H':'U',
        'V':'I',   'L':'Y',   'Z':'M'}.freeze

def block_word?(str)
  letters = str.chars
  used = []
  letters.each do |e|
    if PAIR.has_key?(e.to_sym)
      return false if letters.include?(PAIR[e.to_sym]) 
    end
    return false if used.include?(e)
    used << e
  end
  true
end



p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
p block_word?('BBBS') == false
