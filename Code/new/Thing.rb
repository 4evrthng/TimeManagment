class Thing
  attr_accessor:name


  def initialize (name)
    self.name           = name
  end

    def thing_name (name = @name)
      if name
        @name = name
      end
        @name;
    end


end