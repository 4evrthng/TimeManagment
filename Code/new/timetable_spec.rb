require './timetable.rb'
require './Event.rb'

describe "timetable" do

  describe "Timetable Creation" do 
  
    before do
      @timetable = Timetable.new;
    
    end

    it "should be able to add an event" do
      @event = @timetable.add_event("Meeting at friday", "13:00","1", Date.new(1999,2,13), "optional")
      @event.event_details.should == "Meeting at friday" + "13:00"+"1"+ Date.new(1999,2,13).to_s+ "optional"
    end

    it "should be able to find event by time" do 
        @event = @timetable.add_event("Meeting at friday", "13:00","1", Date.new(2006,2,13), "optional")
        @event = @timetable.add_event("Meeting at friday", "17:00","1", Date.new(2007,2,13), "i think maybe optional")
        another_event = @timetable.find_by_date_time("13:00", Date.new(2006,2,13))
        another_event.event_details.should == "Meeting at friday"+ "13:00"+"1"+ Date.new(2006,2,13).to_s+ "optional"
    end

    it "shouldn't be able to find event by time which wasn't used" do 
        @event = @timetable.add_event("Meeting at friday", "13:00","1", Date.new(1999,3,13), "optional")
        @event = @timetable.add_event("Meeting at friday", "17:00","1", Date.new(2007,2,13), "i think maybe optional")
        another_event = @timetable.find_by_date_time("13:00", Date.new(1989,2,13))
        another_event.should be_nil
    end

    it "shouldn't be able to create event at the same time" do 
        @event = @timetable.add_event("Meeting at friday", "13:00","1", Date.new(1999,2,13), "optional")
      lambda { @event = @timetable.add_event("another meeting on friday", "13:00","1", Date.new(1999,2,13), "i think maybe optional")}.should raise_error  
    end

    # it "should be able to change event details" do
    #     @timetable.add_event("Meeting at friday", "11:00","1", Date.new(1999,2,13), "optional")
    #     @event = @timetable.change_event_details("11:00", Date.new(1999,2,13),"Meeting at friday2", "17:00","2", Date.new(1920,2,13), "wtf are you" )
    #     @event.event_details.should == "Meeting at friday"+ "13:00"+"1"+ Date.new(2006,2,13).to_s+ "optional"
    # end
  end
end

  