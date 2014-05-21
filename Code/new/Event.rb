class Event
  attr_accessor:description, :time, :length, :date, :importance


  def initialize (description,time,length, date, importance)

    self.description    = description
    self.time           = time
    self.length         = length
    self.date           = date
    self.importance     = importance
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
end