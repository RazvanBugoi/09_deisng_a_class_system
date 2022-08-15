require 'diary'

RSpec.describe DiaryEntry do
    context "#content" do
        it "returns @contents" do
            my_entry = DiaryEntry.new("my_contents", "my_todo", 734534523423)
            expect(my_entry.content).to eq "my_contents"
        end
    end

    context "#todo" do
        it "returns @todo" do
            my_entry = DiaryEntry.new("my_contents", "my_todo", 734534523423)
            expect(my_entry.todo).to eq "my_todo"
        end
    end

    context "#phone_number" do
        it "returns @phone_number" do
            my_entry = DiaryEntry.new("my_contents", "my_todo", 734534523423)
            expect(my_entry.phone_number).to eq 734534523423
        end
    end
end