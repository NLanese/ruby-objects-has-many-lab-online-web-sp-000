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
