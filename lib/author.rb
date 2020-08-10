class Author

  attr_accessor :name

  @@allPosts = 0

  def initialize(name)
    @name = name
    posts =[]
  end

  def posts
    @posts
  end

  def add_post(post)
    @posts << post
    if (post.author != self)
      post.author = self
    end
  end

end
