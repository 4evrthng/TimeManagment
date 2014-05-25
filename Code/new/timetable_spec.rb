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
    
    describe "a lot of events" do 
      before do 
@event = @timetable.add_event("Sarah", "11:00","1", Date.new(2006,2,13), "optional")
          @thing01 = @event.add_thing("pen");
          @thing02 = @event.add_thing("chocolate");
          @thing03 = @event.add_thing("computer");
          @thing04 = @event.add_thing("umbrella");
          @thing05 = @event.add_thing("sault");
          @thing06 = @event.add_thing("keyboard");
        @event1 = @timetable.add_event("Jane", "12:00","1", Date.new(2006,2,13), "i think maybe optional")
          @thing11 = @event1.add_thing("pepper");
          @thing12 = @event1.add_thing("mayonesse");
          @thing13 = @event1.add_thing("pizza");
          @thing14 = @event1.add_thing("saw");
          @thing15 = @event1.add_thing("friend");
          @thing16 = @event1.add_thing("house");
        @event2 = @timetable.add_event("Melody", "13:00","1", Date.new(2006,2,13), "optional")
          @thing21 = @event2.add_thing("Jenny");
          @thing22 = @event2.add_thing("tree");
          @thing23 = @event2.add_thing("power");
          @thing24 = @event2.add_thing("acid");
          @thing25 = @event2.add_thing("H20");
          @thing26 = @event2.add_thing("flashlight");
        @event3 = @timetable.add_event("Arthur", "14:00","1", Date.new(2007,2,13), "i think maybe optional")
          @thing31 = @event3.add_thing("wallpaper");
          @thing32 = @event3.add_thing("glasses");
          @thing33 = @event3.add_thing("knife");
          @thing34 = @event3.add_thing("code");
          @thing35 = @event3.add_thing("drinks");
          @thing36 = @event3.add_thing("food");
        @event4 = @timetable.add_event("Sleep", "15:00","1", Date.new(2006,2,13), "optional")
          @thing41 = @event4.add_thing("tshirt");
          @thing42 = @event4.add_thing("drinks");
          @thing43 = @event4.add_thing("edvinas");
          @thing44 = @event4.add_thing("water");
          @thing45 = @event4.add_thing("juice");
          @thing46 = @event4.add_thing("evrything else");
        @event5 = @timetable.add_event("Food", "16:00","1", Date.new(2007,2,13), "i think maybe optional")
        @event6 = @timetable.add_event("Birthday", "18:00","1", Date.new(2006,2,13), "optional")
          @thing61 = @event6.add_thing("sense of humour");
        @event7 = @timetable.add_event("Something", "17:00","1", Date.new(2008,2,13), "i think maybe optional")
          @thing71 = @event7.add_thing("book");
          @thing72 = @event7.add_thing("paradize");
          @thing73 = @event7.add_thing("aerosmith");
          @thing74 = @event7.add_thing("watch");
          @thing75 = @event7.add_thing("witch");
          @thing76 = @event7.add_thing("Harry Potter");
      end

      it "should be able to get all events from defined date" do
        @timetable.get_events_for( Date.new(2006,2,13)).should == [@event ,@event1,@event2 ,@event4,@event6]
      end

      it "should be able to get events things" do
        @timetable.get_things_for(Date.new(2006,2,13)).should  match_array([ @thing01 , @thing02,@thing03,@thing04,@thing05,@thing06,@thing11 , @thing12,@thing13,@thing14,@thing15,@thing16, @thing21 , @thing22,@thing23,@thing24,@thing25,@thing26,@thing41,@thing42,@thing43 ,@thing44,@thing45 ,@thing46,@thing61].uniq)
      end
    end
  end
end

  