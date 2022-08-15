require 'diary'
require 'diary_entry'

RSpec.describe "Diary Integration Class" do
    context "#add" do
        it "adds diary entries as strings and stores them into an array" do
           diary_entry_1 = DiaryEntry.new("my_first_entry", "todo_1", 0344534124534)
           my_diary = Diary.new
           result = my_diary.add(diary_entry_1)
           expect(result).to eq nil
        end
    end

    context "#display_diary" do
        it "displays a list of all diary entries" do
           diary_entry_1 = DiaryEntry.new("my_first_entry", "todo_1", 0344534124534)
           diary_entry_2 = DiaryEntry.new("my_second_entry", "todo_2", 034453224124534)
           my_diary = Diary.new
           my_diary.add(diary_entry_1)
           my_diary.add(diary_entry_2)
           expect(my_diary.display_diary).to eq [diary_entry_1.content, diary_entry_2.content]
        end
    end

    context "#display_todos" do
        it "displays a list of all todos" do
           diary_entry_1 = DiaryEntry.new("my_first_entry", "todo_1", 0344534124534)
           diary_entry_2 = DiaryEntry.new("my_second_entry", "todo_2", 034453224124534)
           my_diary = Diary.new
           my_diary.add(diary_entry_1)
           my_diary.add(diary_entry_2)
           expect(my_diary.display_todos).to eq [diary_entry_1.todo, diary_entry_2.todo]
        end
    end

    context "#display_phone_numbers" do
        it "displays a list of all phone numbers" do
           diary_entry_1 = DiaryEntry.new("my_first_entry", "todo_1", 0344534124534)
           diary_entry_2 = DiaryEntry.new("my_second_entry", "todo_2", 034453224124534)
           my_diary = Diary.new
           my_diary.add(diary_entry_1)
           my_diary.add(diary_entry_2)
           expect(my_diary.display_phone_numbers).to eq [diary_entry_1.phone_number, diary_entry_2.phone_number]
        end
    end

    context "#select_entries" do
        it "returns an error is wpm is not positive" do
           diary_entry_1 = DiaryEntry.new("my first entry", "todo_1", 0344534124534)
           my_diary = Diary.new
           my_diary.add(diary_entry_1)
           expect{ my_diary.select_entries(1, 0) }.to raise_error "WPM must be positive."
        end
    end

    context "#select_entries" do
        it "displays a list of all the diary entries that can be read in allocated time" do
           diary_entry_1 = DiaryEntry.new("my first entry", "todo_1", 0344534124534)
           my_diary = Diary.new
           my_diary.add(diary_entry_1)
           result = my_diary.select_entries(1, 3)
           expect(result).to eq "my first entry"
        end
    end

    context "#select_entries" do
        it "displays a list of all the diary entries that can be read in allocated time" do
           diary_entry_1 = DiaryEntry.new("my first entry is longer this time", "todo_1", 0344534124534)
           my_diary = Diary.new
           my_diary.add(diary_entry_1)
           result = my_diary.select_entries(2, 2)
           expect(result).to eq "my first entry is"
        end
    end

    context "#select_entries" do
        it "displays a list of all the diary entries that can be read in allocated time" do
           diary_entry_1 = DiaryEntry.new("my first entry is longer this time", "todo_1", 0344534124534)
           diary_entry_2 = DiaryEntry.new("my second entry", "todo_2", 034234534124534)
           diary_entry_3 = DiaryEntry.new("my final entry", "todo_3", 03444124534)
           my_diary = Diary.new
           my_diary.add(diary_entry_1)
           my_diary.add(diary_entry_2)
           my_diary.add(diary_entry_3)
           result = my_diary.select_entries(4, 2)
           expect(result).to eq "my first entry is longer this time my"
        end
    end
end