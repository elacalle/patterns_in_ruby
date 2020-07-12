require './employee'
require './payroll_system'

employee = Employee.new 'Albert', 'Manager'
payroll = PayrollSystem.new

employee.add_observer(payroll)

employee.salary = 1000
