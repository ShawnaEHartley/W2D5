class Item
    
    def self.valid_date?(str)
        year, month, day = str.split("-")
        if (year.to_i.is_a? (Integer)) && (1..12).include?(month.to_i) && (1..31).include?(day.to_i)
            return true
        else
            return false
        end
    end

    # p valid_date?("1990-1-25")
    # p valid_date?("185-20")


    def initialize(title, deadline, description)
        @title = title
        @deadline = deadline
        @description = description

        if !Item.valid_date?(deadline)
            raise 'deadline is not valid'
        end
    end

    # p Item.new("study", "2022-11-20", "get shit done and study for 9 hours every day")
    # p Item.new("clean house", "2022-11", "wash duvet cover")

    attr_accessor :title, :deadline, :description

end