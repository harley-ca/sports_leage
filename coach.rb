require_relative("./team_member.rb")

class Coach < TeamMember

    def initialize(name)
        super(name)
    end

    def train
        puts "#{@name} is teaching a thing or two."
    end

    def play
        puts "#{@name} is yelling at the ref."
    end

end