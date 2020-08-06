class Clown
  # write methods here!

  attr_accessor :name, :skill
  attr_reader :age, :fears 
  
    @@all=[]
    @@names=[]
    @@age=[]

    def initialize(name, age, skill, fears)
      @name = name
      @age = age
      @skill = skill
      @fears = fears
      @@all<<self
      @@names << name
      @@age << age
    end

    def lie_about_age(new_age)
      @age = new_age
    end

    def overcome_fears
      @fears = nil
    end

    def say_hi
      puts "Hello my name is #{self.name} I'm #{self.age} years old. I'm good at #{self.skill} and terrifed of #{self.fears}"
    end

    def self.all
      @@all
    end
    
    def self.names
      @@names
    end

    def self.find_by_name(name)
      found=@@all.detect do |el|
        el.name == name
      end
      found
    end

    def self.oldest
        max=@@age.max
        oldest_one=@@all.detect do |el|
          el.age == max
        end
        oldest_one
      end

      def self.fears
          fearless_ones=@@all.select do |el|
            el.fears == nil
          end
          fearless_ones
      end
end 

# end of Clown class@name


# [ ] Clown.oldest
# return a single Clown instance for the clown with the highest age.
# [ ] Clown.fearless
# return an array of Clown instances who have overcome their fears (i.e. their fears is nil)