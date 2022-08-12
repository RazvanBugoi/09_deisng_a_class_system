class Diary
    def initialize
        @diary = []
        @todos = []
        @phone_numbers = []
    end

    def add(diary_entry) # diary_entry is an instance of DiaryEntry
        @diary << diary_entry.content
        @todos << diary_entry.todo
        return nil
    end

    def display_phone_numbers
    # I want to see a list of all of the mobile phone numbers in all my diary entries
    end

    def display_todos
    # Returns a list of all todos
        return @todos
    end

    def display_diary
        return @diary
    end

    def select_entries(time, wpm)
     #I want to select diary entries to read based on how much time I have and my reading speed
    end
end