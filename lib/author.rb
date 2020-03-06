# require "pry"
class Author
  attr_accessor :name
  @@post_count = 0

  def initialize(name)
    @name = name

  end

  def posts
    Post.all.select {|post| post.author == self}
  end

  def add_post(post)
      @@post_count += 1
    post.author = self
  end

  def add_post_by_title(title)
      @@post_count += 1
      title = Post.new(title)
      add_post(title)
      # binding.pry
  end
end
