require_relative("./team_member.rb")

class Player < TeamMember

    def initialize(name, number, position)
        super(name)
        @number = number
        @position = position
    end

    def to_s
        "##{@number} #{@name} #{@position}"
    end


end