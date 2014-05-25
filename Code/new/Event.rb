class Event
  attr_accessor:description, :time, :length, :date, :importance
  attr_reader :things


  def initialize (description,time,length, date, importance)

    self.description    = description
    self.time           = time
    self.length         = length
    self.date           = date
    self.importance     = importance
    @things = []
  end

    def event_details 
      @description.to_s+@time.to_s+@length.to_s+ @date.to_s+ @importance.to_s
    end

   def event_description (description = nil)
    if description 
      @description = description
    end
      @description
  end

  def event_time (time = nil)
    if time 
      @time = time
    end
    @time
  end

  def event_length (length = nil)
    if length 
    @length = length
    end
    @length
  end

  def event_date (date = nil)
    if date 
      @date = date
    end
    @date
  end

  def event_importance (importance = nil)
    
    if importance 
      @importance = importance
    end

    if !(@importance == "optional" || @importance == "very important" || @importance == "important") then
      @importance = "unknown"
    end

    @importance
  end

  def add_thing (name)
    a = 0;
    @things.each do |th|
      if th.thing_name == name
        a = 1;
      end
    end
    if a == 0
    @things << Thing.new(name)
  end
    @things.last
  end

  def get_things 
    nil if @things.length == 0
    @things
  end

  def remove_thing(name) 
    @things.each do |th|
      if th.thing_name == name
        @things.delete(th)
      end
    end
    @things
  end
end