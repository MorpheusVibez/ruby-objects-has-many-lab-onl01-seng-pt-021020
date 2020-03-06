require "pry"
class Author
  attr_accessor :name

  def initialize(name)
    @name = name
    
  end

  def posts
    Post.all.select {|post| post.author == self}
  end

  def add_post(post)
      # @@song_count += 1
    post.author = self
  end

  def add_post_by_title(name)
      name = Post.new(name)
      add_post(title)
      binding.pry
  end
end
