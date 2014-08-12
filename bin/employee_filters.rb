require '../data/employees'
require '../lib/employee_filter'
require 'pp'

employee_filter = EmployeeFilter.new(EMPLOYEES)
pp employee_filter.started_before_2006
p "*"*30
pp employee_filter.all_with_start_date
