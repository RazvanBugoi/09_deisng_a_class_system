class DiaryEntry
    def initialize(contents, todo, phone_number)
        @contents = contents
        @todo = todo
        @phone_number = phone_number
    end

    def content 
        return @contents
    end

    def todo 
        return @todo
    end

    def phone_number
        fail "Phone number must be an integer." if @phone_number.class != Integer
        return @phone_number
    end
end