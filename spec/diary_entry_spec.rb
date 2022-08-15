require "diary_entry"

RSpec.describe DiaryEntry do
    context "phone number must be an integer" do
        it "fails if the argument is not an integer" do
            my_diary_entry = DiaryEntry.new("my_entry", "my_todo", "9344235425")
            expect { my_diary_entry.phone_number }.to raise_error "Phone number must be an integer."
        end
    end
end