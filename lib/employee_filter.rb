class EmployeeFilter
  require 'date'

  def initialize(employees)
    @employees = employees
  end

  def started_before_2006
    result = []
    @employees.each { |employee| result << employee if employee[:start_date].year < 2006 }
    result
  end


  def all_with_start_date
    result = []
    @employees.each do |employee|
      if employee[:start_date]
        result << "#{employee[:first_name]} #{employee[:last_name]} (#{employee[:title]}) - #{employee[:start_date].month}/#{employee[:start_date].day}/#{employee[:start_date].year}"
      end
    end
    result
  end



end