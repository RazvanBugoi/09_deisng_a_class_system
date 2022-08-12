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
        return @phone_number
    end
end