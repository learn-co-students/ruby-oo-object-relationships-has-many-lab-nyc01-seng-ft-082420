require 'pry'

class Author
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def posts
    Post.all.filter{ |post| post.author == self}
  end

  def add_post(title)
    title.author = self
  end

  def add_post_by_title(post_title)
    post = Post.new(post_title)
    # binding.pry
    post.author = self
  end

  def self.post_count
    Post.all.count
  end
end