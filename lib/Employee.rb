
class Employee
    attr_accessor :name, :manager, :salary

    @@all = []

    def initialize(name, manager, salary)
        @name = name.to_s
        @manager = manager
        @salary = salary.to_i
        @@all << self
    end


    def self.all 
        @@all 
    end

    def manager_name
        print "Hi my manager's name is #{self.manager.name}!!"
    end


    def self.paid_over(salary1)
        self.all.select do |employee|
            employee.salary > salary1
        end
    end

    def self.find_by_department(department1)
        
          self.all.find do |employee|
           employee.manager.department == department1
          end   
    end

    def tax_bracket(employees)
        arr1 = []
        Employee.all.each do |employee|
            if (employee.salary - employees.salary).abs < 1000
                arr1 << employee
            end
        end
        arr1.delete(self)
        return arr1
            
    end

    

end #end of class
