class Word
  @@words = []

  define_method(:initialize) do |word|
    @word = word
    @definitions = []
  end

  define_method(:word) do
    @word
  end

  define_method(:definitions) do
    @definitions
  end

  define_singleton_method(:all) do
    @@words
  end

  define_singleton_method(:clear) do
    @@words = []
  end

  define_method(:save) do
    @@words.push(self)
  end
end
