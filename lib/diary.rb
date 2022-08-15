class Diary
    def initialize
        @diary = []
        @todos = []
        @phone_numbers = []
    end

    def add(diary_entry) # diary_entry is an instance of DiaryEntry
        @diary << diary_entry.content
        @todos << diary_entry.todo
        @phone_numbers << diary_entry.phone_number
        return nil
    end

    def display_phone_numbers
        return @phone_numbers
    end

    def display_todos
        return @todos
    end

    def display_diary
        return @diary
    end

    def select_entries(time, wpm)
        fail "WPM must be positive." if !wpm.positive?
        reading_time = (wpm * time).to_f
        readable_entries = ""
        splited_list = @diary.join(" ").split
        splited_list.each_index do |index|
            readable_entries << "#{splited_list[index]} " if index < reading_time
        end
        return readable_entries.strip
    end
end
