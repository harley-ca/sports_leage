class TeamMember

    def initialize(name)
        @name = name
    end

    def to_s
        @name
    end

    def train
        puts "#{@name} is training hard."
    end

    def play
        puts "#{@name} knuckles down and plays a game."
    end

end