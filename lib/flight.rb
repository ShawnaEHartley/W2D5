class Flight
    # require_relative "./passenger.rb"

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

    def board_passenger(passenger)
        if passenger.has_flight?(@flight_number) && !full?
            @passengers << passenger
        end
    end

    def list_passengers
        names = []
        @passengers.each do |passenger|
            names << passenger.name
        end
        names
    end

    def [](index)
        @passengers[index]
    end

    def <<(passenger)
        self.board_passenger(passenger)
    end


end
