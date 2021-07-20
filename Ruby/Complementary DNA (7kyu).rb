=begin
Deoxyribonucleic acid (DNA) is a chemical found in the nucleus of cells and
carries the "instructions" for the development and functioning of living
organisms.

In DNA strings, symbols "A" and "T" are complements of each other, as "C" and
"G". You have function with one side of the DNA (string, except for Haskell);
you need to get the other complementary side. DNA strand is never empty or there
is no DNA at all (again, except for Haskell).
=end

# my solution

def DNA_strand(dna)
	dna = dna.split("").collect do |letter|
		case letter
		when "A" then "T"
		when "T" then "A"
		when "C" then "G"
		when "G" then "C"
		end
	end
	dna.reduce(:+)
end

# best solution

def DNA_strand(dna)
  dna.tr("ACTG", "TGAC")
end