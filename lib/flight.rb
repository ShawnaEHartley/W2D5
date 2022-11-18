class Flight
    require_relative "./passenger.rb"

    def initialize(flightstr, cap)
        @flight_number = flightstr
        @capacity = cap
        @passengers = []
    end

    def passengers
        @passengers
    end
    
    def full?
        @passengers.length >= @capacity
    end

    def board_passenger(Passenger.new(name))
        if @passenger.has_flight?
            @passengers << @passenger
        end
    end



end
