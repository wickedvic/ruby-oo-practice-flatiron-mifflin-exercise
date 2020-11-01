class Manager

        attr_accessor :name, :department, :age

    @@all = []

    def initialize(name, department, age)
        @name = name.to_s
        @department = department.to_s
        @age = age
        @@all << self
    end


    def self.all 
        @@all 
    end

    def employees
        Employee.all.select do |employee|
            employee.manager.name == self.name
        end

    end

    def hire_employee(name, salary)
        Employee.new(name, self.name, salary)
    end

    def self.all_departments
        self.all.map {|manager| manager.department}
    end

    def self.average_age
      self.all.map {|manager| manager.age}.sum.to_f/self.all.count
      
    end




end
