class Plane
    
def initialize
    @status = flying
    
    def takeoff
        @status = landed
    end
    
    def land
        @status == landed ? (fail "plane already landed") : @status = "landed"
    end
end
end