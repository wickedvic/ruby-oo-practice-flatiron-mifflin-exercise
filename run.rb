require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

m1 = Manager.new("michael", "THE OFFICE", 42)

e1 = Employee.new("dwight", m1, 9000)
e2 = Employee.new("kevin", m1, 9500)


m2 = Manager.new("juan", "UK OFFICE", 39)

e3 = Employee.new("fabio", m2, 99000)
e4 = Employee.new("paak", m2, 169000)

binding.pry
puts "done"
