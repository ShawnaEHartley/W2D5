class Passenger

    def initialize(name)
        @name = name
        @flight_numbers = []
    end

    def name
        @name
    end

    def has_flight?(str)
        @flight_numbers.include?(str.upcase)
    end

    def add_flight(str)
        @flight_numbers << str.upcase if !has_flight?(str)
    end

end