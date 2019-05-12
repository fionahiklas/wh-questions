module Q3

  ##
  #
  # Class to work out how many 5-sunday months there are in a given range.
  #
  # Any month bar February can have 5 sundays.  February can only have 5 Sundays if it's a
  # leap year and it therefore contains 29 days and the 1st needs to be a Sunday itself.
  #
  # For a 30 day month there will be 5 Sundays if the first day is either a Saturday or
  # Sunday.  For a 31 day month Friday is also a permissable first day.
  #
  # If days of the week are numbers 1-7 for Monday to Sunday. and the remainder of dividing
  # the total number of days is as follows
  #
  # 28 % 28   = 0
  # 29 % 28   = 1
  # 30 % 28   = 2
  # 31 % 28   = 3
  #
  # Valid days are 5 (Friday), 6 (Saturday), 7 (Sunday)
  class MonthOfSundays

  end # MonthOfSundays

end # Q3