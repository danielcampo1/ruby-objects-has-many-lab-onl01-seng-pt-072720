class Author
    attr_accessor :posts, :name
    @@all = []
        def initialize(name)
            @name = name
            @posts = []
        end
        
        def songs
    Song.all.select do |song|
      song.artist == self
    end
  end
        
        

    def add_post(post)
        @posts << post
        post.author = self
    end

    def add_post_by_title(title)
        post = Author.new(title)
        add_post(title)
    end
    


    def self.post_count
        Author.all.count
    end

end