# Given a year, report if it is a leap year.

# The tricky thing here is that a leap year in the Gregorian calendar occurs:

# ```text
# on every year that is evenly divisible by 4
#   except every year that is evenly divisible by 100
#     unless the year is also evenly divisible by 400
# ```

# For example, 1997 is not a leap year, but 1996 is.  1900 is not a leap
# year, but 2000 is.


class Year
  attr_accessor :year
  def initialize(year)
    @year = year
  end

  def self.leap?(year)
    return false if year%4 != 0
    return true if year%400 == 0
    return false if year%100 == 0
    true
  end
end