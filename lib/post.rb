class Post

  @@all = []

  def title=(input)
    @title = input
  end

  def title
    @title
  end

  def initialize(title)
    @title = title
    @@all << self
  end

  def author=(author)
    @author = author
    if !(author.posts.include?(self))
      author.add_post(self)
    end
  end



end
