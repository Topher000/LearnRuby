def DNA_strand(dna)
    # hash that holds the key and the value
    convert = {
        "A" => "T",
        "T" => "A",
        "C" => "G",
        "G" => "C"
    }
    word = []
   dna.each_char do |say|

    word.push convert[say]
   end
   dna_convert = word.join
   puts "String #{dna} is #{dna_convert}"
  end

  DNA_strand("AAAA")
