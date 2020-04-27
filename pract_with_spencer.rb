def pangram?(str)
    sentance = str.downcase
    test_word = []
    sentance.each_char do |line|
        if ('a'..'z').include? line
            test_word.push line
        end
    
    end
    test_word.uniq.sort == ('a'..'z').to_a


  end
  def test(str, works = true)
    puts pangram?(str) == works || 'It broke!'
  end

  test('The quick brown fox jumps over the lazy dog.')
  test('The quick brown fox jumps over the 1azy dog.', false)
  test('The five boxing wizards jump quickly.')
  test('This is not a pangram.')