class EmployeeFilter

  def initialize(employees_data)
    @employees_data = employees_data
  end

  def started_before_2006
    @employees_data.select {|employee| employee[:start_date] < Date.new(2006,1,1)}
  end

  def all_with_start_date
    @employees_data.map do |employee|
      start_date = employee[:start_date].strftime('%-m/%-d/%Y')
      "#{employee[:first_name]} #{employee[:last_name]} (#{employee[:title]}) - #{start_date}"
    end
  end

end
