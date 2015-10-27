puts "Los argumentos recibidos son:"
puts ARGV.inspect
puts ""

#Driver code

# $ ruby argv.rb
# => Los argumentos recibidos son:
# => []

# $ ruby argv.rb un_argumento
# => Los argumentos recibidos son:
# => ["un_argumento"]

# $ ruby argv.rb argumento_uno argumento_dos
# => Los argumentos recibidos son:
# => ["argumento_uno", "argumento_dos"]

# $ ruby argv.rb "argumento uno con espacios" "argumento dos con espacios"
# => Los argumentos recibidos son:
# => ["argumento uno con espacios", "argumento dos con espacios"]

#It is Pig_latin method with ARGV.
#it converts a string to Pig Latin
def pig_latin_word
	#get a sentence User
	puts "dame otra palabra: "
	#it receives a string con 'ARGV' and converts sentence to into an Array 
	list = ARGV
	#vowel variable is initialized
	vowel = "aeiou"
	#list array is evaluated
	list.each { |word| 
		#it evaluates vowels and converts words 'way'
		if vowel.include?(word[0])
			puts "#{word[1..-1]}#{word[0]}way"
		else 
			#Validation of words
			for i in 1..word.length
				#it evaluates consonants and converts words 'ay'
				if vowel.include?(word[i])
					puts "#{word[i..-1]}#{word[0]}ay"
					break
				else 
					puts "#{word[i+1..-1]}#{word[0]}#{word[i]}ay"
					break
				end
			end
		end
	}
end

#test
pig_latin_word