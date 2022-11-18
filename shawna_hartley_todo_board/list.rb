require_relative "./item.rb"

class List

    def initialize(label)
        @label = label
        @items = []
    end

    attr_accessor :label 

    def add_item(title, deadline, description = "")
        item = Item.new(title, deadline, description)
        if Item.valid_date?(deadline)
            @items << item
            return true
            p @items
        else
            return false
        end
    end

    def size
        @items.length
    end

    def valid_index?(ind)
        if ind < 0 || ind > @items.length - 1
            return false
        else
            return true
        end
    end

    def swap(ind1, ind2)
        if !valid_index?(ind1) || !valid_index?(ind2)
            return false
        else
            @items[ind1], @items[ind2] = @items[ind2], @items[ind1]
            return true
        end
    end

    def [](ind)
        @items[ind]
    end

    def priority
        @items[0]
    end

    def print
        puts label
        # puts String.ljust
        puts "Index | Item          | Deadline"
        # puts String.ljust
        @items.each_with_index do |instance, ind|
            puts "#{ind} | #{instance.title} | #{instance.deadline}"


        puts #{i} "|" #{@items[i].name} "|" #{@items[i].deadline}
        end
        # puts String.ljust
    end
    
end

list = List.new("todo")
list.add_item("study", "2022-11-20", "get shit done and study for 9 hours every day")
list.add_item("walk Rhett", "2022-11-18")
list.add_item("water plants", "2022-11-20", "add mix to FLF")
list.add_item("clean mirrors", "2022-11-18")
list.add_item("workout", "2022-11-19")

# list.add_item("clean house", "2022-11", "wash duvet cover")
# p list.valid_index?(8)
# p list.valid_index?(-2)
# p list.valid_index?(1)
# p list.print

