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

  describe('#definitions') do
    it('it returns an empty array of definitions') do
      test_word = Word.new('run')
      expect(test_word.definitions()).to(eq([]))
    end
  end

  describe('.all') do
    it('is empty at first') do
      expect(Word.all()).to(eq([]))
    end
  end
end
