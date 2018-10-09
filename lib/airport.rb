class Airport
    
    def initialize(capacity)
        @capacity = capacity
        @planes = []
    end
    
    def takeoff(plane)
        raise 'Cannot take off plane: weather is stormy' if stormy?
    end
    
    def land
      raise 'Cannot land plane: airport full' if full?
      raise 'Cannot land plane: weather is stormy' if stormy?
      @planes << plane
    end
end

private
def full?
    @planes.length >= @capacity
end

def stormy?
    rand(1..6) > 4
end
    