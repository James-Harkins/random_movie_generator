class Movie
    attr_reader :title, :director, :year

    def initialize(params)
        @title = params["Title"]
        @director = params["Director"]
        @year = params["Year"]
    end
end