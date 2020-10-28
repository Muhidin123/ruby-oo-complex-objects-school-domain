class School

    attr_accessor :school_name, :name, :grade

    def initialize(school_name, hash={}, *grade)
        @school_name = school_name
        @name = name
        @grade = grade
        @hash = hash
    end


    def roster
        @hash
    end


    def add_student(name, grade)
        if roster.length == 0 || !@hash.key?(grade)
            @hash[grade] = [name]
        elsif roster.length > 0 && @hash.key?(grade)
            @hash[grade] << name
        end
    end


    def grade(grade)
      @hash[grade]
    end
    
    def sort
        @hash[9] = @hash[9].sort
        @hash.sort.to_h
    end

end