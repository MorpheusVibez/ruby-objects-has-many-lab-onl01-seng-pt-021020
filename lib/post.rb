class Post
  attr_accessor :name, :author, :title
  @@all = []

  def initialize(name)
    @name = name
    @author = author
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def title
    @title = title
  end

  def author_name
    if @author == nil
      nil
    else
      @author.name
    end
  end
end
