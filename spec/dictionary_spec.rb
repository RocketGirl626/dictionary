require('rspec')
require('word')

describe(Word) do

  before() do
    Word.clear()
  end

  describe('#word') do
    it('returns the word') do
      test_word = Word.new('run')
      expect(test_word.word()).to(eq('run'))
    end
  end

end
