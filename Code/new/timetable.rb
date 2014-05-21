#require './Event.rb'
class Timetable
  #@events = Array.new
  attr_reader :events

  def initialize
    @events = []
  end

  def add_event (description,time,length, date, importance)
    temporary_event = find_by_date_time(time,date)
    unless temporary_event.nil? 
     raise 'Oops, doesn\'t work'
    end
      
    @events.last
  end

  def find_by_date_time(time,date) 
    return nil if !@events
    @events.each do |e|
      if e.event_date == date && e.event_time == time
        return e
      end
    end
    nil
  end
  # def change_event_details(timef,datef,description,time,length, date, importance)
  #   event = find_by_date_time(timef,datef)
  #   @events.delete(event);
  #   add_event(description,time,length, date, importance)
  # end
end