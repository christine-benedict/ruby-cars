# Story: As a programmer, I can make a vehicle.
# Hint: Create a class called Vehicle, and create a variable called my_vehicle which contains an object of class Vehicle.

class Vehicle
    attr_accessor :color, :cylinders, :modelyear
    def initialize (color, cylinders, modelyear)
        @color = color
        @cylinders = cylinders
        @modelyear = modelyear
    end

    def show_color
        print "Color is #{@color} and has #{@cylinders} cylinders \n"
    end

end

my_vehicle = Vehicle.new("blue", 2, 2001 )

my_vehicle.show_color
my_vehicle.color

# Story: As a programmer, I can make a car.
# Hint: Create a class called Car, and create a variable called my_car which contains an object of class Car.
#
# Story: As a programmer, I can tell how many wheels a car has; default is four.
# Hint: initialize the car to have four wheels, then create a method to return the number of wheels.

class Car < Vehicle
    attr_accessor :wheels, :lights, :signal, :speed

    def initialize (color, cylinders, modelyear)
        super(color, cylinders, modelyear)
        @wheels = 4
        @lights = "off"
        @signal = "off"
        @speed = 0
    end

    def light_toggle
        if @lights == "off"
            @lights = "on"
        else
            @lights = "off"
        end
    end

    def turn_left
        if @signal == "off" || @signal == "right"
            @signal = "left"
        end
    end

    def turn_right
        if @signal == "off" || @signal == "left"
            @signal = "right"
        end
    end

    def signal_off
        @signal = "off"
    end
end

my_car = Car.new("red", 4, 2015 )
# Story: As a programmer, I can make a Tesla car.
# Hint: Create an variable called my_tesla which is of class Tesla which inherits from class Car.
class Tesla < Car
    def acceleration
        @speed = @speed + 10
    end

    def braking
        @speed = @speed - 7
    end
end


my_tesla = Tesla.new("white", "battery", 2016 )

p my_tesla.speed
my_tesla.acceleration
p my_tesla.speed
my_tesla.braking
p my_tesla.speed

modelx = Tesla.new("silver", "battery", 2018)

# Story: As a programmer, I can make a Tata car.
class Tata < Car
    def acceleration
        @speed = @speed + 2
    end

    def braking
        @speed = @speed - 1.25
    end
end

my_tata = Tata.new("black", 4, 2002 )
my_second_tata = Tata.new("purple", 3, 1990)

p my_tata.speed
my_tata.acceleration
p my_tata.speed
my_tata.braking
p my_tata.speed

# Story: As a programmer, I can make a Toyota car.
class Toyota < Car
    def acceleration
        @speed = @speed + 7
    end

    def braking
        @speed = @speed - 5
    end
end

my_toyota = Toyota.new("Silver", 8, 2018 )
my_second_toyota = Toyota.new("green", 6, 2000)

p my_toyota.speed
my_toyota.acceleration
p my_toyota.speed
my_toyota.braking
p my_toyota.speed

# Story: As a programmer, I can tell which model year a vehicle is from. Model years never change.
# Hint: Make model year part of the initialization.


# Story: As a programmer, I can turn on and off the lights on a given Vehicle.
# Hint: Create method(s) to allow programmer to turn lights on and off. Which class are the methods in?
# should start off
p my_car.lights
# turn lights on
my_car.light_toggle
#lights are on
p my_car.lights
#turn lights off
my_car.light_toggle
# lights are off
p my_car.lights
# Story: As a programmer, I can determine if the lights are on or off. Lights start in the off position.

# Tests:
# vehicle = Vehicle.new(...)
# vehicle.lights_on? # should return false
# vehicle.lights_on = true
# vehicle.lights_on? # should return true
# vehicle.lights_on = false
# vehicle.lights_on? # should return false

# Story: As a programmer, I can signal left and right. Turn signals starts off.
#
# Story: As a programmer, I can determine the speed of a car. Speed starts at 0 km/h.
#
# Story: As a programmer, I can speed my Teslas up by 10 per acceleration.
#
# Story: As a programmer, I can slow my Teslas down by 7 per braking.
#
# Story: As a programmer, I can speed my Tatas up by 2 per acceleration.
#
# Story: As a programmer, I can slow my Tatas down by 1.25 per braking.
#
# Story: As a programmer, I can speed my Toyotas up by 7 per acceleration.
#
# Story: As a programmer, I can slow my Toyotas down by 5 per braking.
#

# Story: As a programmer, I can call upon a car to tell me all it's information.
# Hint: Implement to_s on one or more classes. You can call a super class's to_s with super.
p my_car.itself
# Story: As a programmer, I can keep a collection of two of each kind of vehicle, all from different years.
# Hint: Create two of each vehicles, all from different model years, and put them into an Array.

carArray = [ my_tesla, modelx, my_tata, my_second_tata, my_toyota, my_second_toyota ]
#
# Story: As a programmer, I can sort my collection of cars based on model year.

carArray.sort_by!{ |car| car.modelyear }
p carArray

# Story: As a programmer, I can sort my collection of cars based on model.
# Hint: Sort based on class name.
#
# Story: As a programmer, I can sort my collection of cars based on model and then year.
# Hint: Find out how the spaceship operator can help you with an array.
