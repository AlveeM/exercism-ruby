require 'date'

class Meetup
  def initialize(month, year)
    @month, @year = month, year
  end

  def day(day_of_week, filter)
    start_date = Date.new(@year, @month)
    # set end_date to last day of @month
    end_date = start_date.next_month - 1

    select_method = :"#{day_of_week}?"
    candidates = (start_date..end_date).select(&select_method)

    case filter
    when :first
      candidates.first
    when :second
      candidates[1]
    when :third
      candidates[2]
    when :fourth
      candidates[3]
    when :last
      candidates.last
    when :teenth
      candidates.detect { |date| date.mday.between?(13, 19) }
    end
  end
end