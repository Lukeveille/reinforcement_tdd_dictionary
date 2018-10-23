class Dictionary
  def initialize
    @entries = {}
  end

  def add(hash)
    hash.class == Hash ? @entries.merge!(hash) : @entries.merge!(hash => nil)
  end

  def keywords
    @entries.keys.sort
  end

  def include?(value)
    @entries.include?(value)
  end

  def find(value)
    selections = self.entries.select { |k,v| k[0..(value.length - 1)] == value }
  end

  attr_accessor :entries
end