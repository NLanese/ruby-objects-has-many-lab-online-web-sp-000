class Author

  attr_accessor :name

  @@allPosts = 0

  def initialize(name)
    @name = name
    @posts =[]
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

  def add_post_by_title(title)
    newPost = Post.new(title)
    @@allPosts += 1
    newPost.author = self
  end

end
