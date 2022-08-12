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
end