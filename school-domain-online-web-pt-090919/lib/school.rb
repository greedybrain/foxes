class School

    # when we placed this code at the bottom of our class, nothing broke,
    # indicating that we can define the method on a later line than we use it
    # but, it's best practice to tell any future developers what our attributes are
    # by writing them at the top of the class
    attr_reader :roster

    def initialize(name)
        @roster = {}
    end

    # we replaced this method with an attribute reader macro above
    # def roster
    #     @roster
    # end

    def add_student(student, grade)
        @roster = {grade=>[student]} #=> this will overwrite our @roster data when we have more than one student!
        @roster[grade] = [student] #=> this will overwrite our @roster data when we have more than one student of the same grade!
        # probably need a conditional
        # make a new grade if the grade doesn't exist
        # if the grade does exist, push new student to existing grade
        # we will come back to this method...
    end

    def grade(grade)
        @roster[grade]
    end

    # we started building a method that would sort our @roster hash
    # when deciding what method to use, be as descriptive as possible
    # map indicates we are trying to return new data from our iteration
    # each indicates we don't care too much about the return value or want to return the original data

    def sort
        # new_hash = {}
        # @roster.each do |grade, students|
        #     students.sort
        # end
        @roster.map do |grade, students|
            students.sort
        end
    end

    # we used this test code to figure out that the map method returns an array
    # regardless of whether it is called on an array or a hash
    # if called on an array, it always returns an array with the same number of elements as the array that called the method
    # if called on a hash, it returns an array with the same number of elements as there are key-value pairs in the hash that called the method
    a = {1=> 'a', 2=> 'b', 3=>'c'}
    a.map do |key,value|
    end

    # we used this test code and received a syntax error and learned that
    # our symbol names can't start with integers!
    a = {1: 'a', 2: 'b', 3: 'c'}


end