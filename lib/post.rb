class Post
  attr_accessor :name, :author
  @@all = []

  def initialize(name)
    @name = name
    @author = author
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
    if @author == nil
      nil
    else
      @author.name
    end
  end
end
