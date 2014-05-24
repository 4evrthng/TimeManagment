class Stuff
  attr_accessor:name


  def initialize (name)
    self.name           = name
  end

    def stuff_name (name = @name)
      if name
        @name = name
      end
        @name;
    end


end