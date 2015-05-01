require('rspec')
require('word')
require('definition')


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

  describe('.clear') do
    it('empties out all of the saved words') do
      Word.new('run').save()
      Word.clear()
      expect(Word.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('adds a word to the array of saved words') do
      test_word = Word.new('run')
      test_word.save()
      expect(Word.all()).to(eq([test_word]))
    end
  end
end

describe(Definition) do

  before() do
    Word.clear()
  end

  describe('#definition') do
    it('returns the definition of the word') do
      test_definition = Definition.new('To operate a machine.')
      expect(test_definition.definition()).to(eq('To operate a machine.'))
    end
  end

  describe('#save') do
    it('adds a definition to the array of definitions') do
      test_definition = Definition.new('To operate a machine.')
      test_definition.save()
      expect(Definition.all()).to(eq([test_definition]))
    end
  end
end
