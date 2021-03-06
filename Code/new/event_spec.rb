require './Event.rb'
require './Thing.rb'


describe "Event" do
  
  describe "Event Creation" do 
  
    before do
      @event =Event.new("Meeting at friday", "14:00","1", Date.new(1999,2,13), "optional");
    end

    it "should send back all details" do
      @event.event_details.should == "Meeting at friday"+ "14:00"+"1"+Date.new(1999,2,13).to_s+ "optional"
    end
    
    it "should have description" do
      @event.event_description.should == "Meeting at friday"
    end

    it "should have begining time" do
      @event.event_time.should == "14:00"
    end

    it "should have length" do
      @event.event_length.should == "1"
    end

    it "should have date" do
      @event.event_date.should == Date.new(1999,2,13)
    end

    it "should have importance" do
      @event.event_importance.should == "optional"
    end

    it "should allow to edit description" do
      @event.event_description("Lunch with Sarah")
      @event.event_description.should == ("Lunch with Sarah")
    end

    it "should allow to edit time" do
      @event.event_time("17:00")
      @event.event_time.should.should.should == "17:00"
    end

    it "should allow to edit length" do
      @event.event_length("8")
      @event.event_length.should.should == "8"
    end

    it "should allow to edit date" do
      @event.event_date(Date.new(2014,2,13))
      @event.event_date.should == Date.new(2014,2,13)
    end

    it "should allow to importance" do
      @event.event_importance("very important")
      @event.event_importance.should == "very important"
    end

    it "should be able to accept 'important' importance" do 
        @event.event_importance("important")
        @event.event_importance.should == "important"
    end
  end

  it "shouldn't allow importance other than 'optional', 'important', 'very important', 'unknown'" do
      event = Event.new("Meeting at friday", "14:00","1", Date.new(1999,2,13), "i think maybe optional");
      event.event_importance.should == "unknown"
  end
  describe "Thing Creation" do 
    before do
      @event =Event.new("Meeting at friday", "14:00","1", Date.new(1999,2,13), "optional");
      @thing = @event.add_thing("pen")
    end

      it "should be able to add thing to the event" do 
        @event.add_thing("pen").name.should == "pen"
      end

      it "should be able to get list of things from the event" do 
        thing2 = @event.add_thing("pen2")
        thing3 = @event.add_thing("pen3")
        @event.get_things.should == [@thing,thing2,thing3]
      end

      it "should be able to remove thing from the list" do 
        thing2 = @event.add_thing("pen2")
        thing3 = @event.add_thing("pen3")
        @event.remove_thing("pen2")
        @event.get_things.should == [@thing,thing3]
      end

      it "shouldn't be able to add already added item" do 
        thing2 = @event.add_thing("pen2")
        thing3 = @event.add_thing("pen3")
        thing4 = @event.add_thing("pen")
        @event.get_things.should == [@thing,thing2,thing3]
      end
  end

  it "shouldn't be able to remove anything from an empty list" do
   @event = Event.new("Meeting at friday", "14:00","1", Date.new(1999,2,13), "optional")
      @event.get_things.should == [];
  end
 
end