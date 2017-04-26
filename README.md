# testing_day2
Homework for week 2, day 2

Explorer Mode
There's an existing program, available for download here, or below:

# A class to convert units of measurement
# To use: Converter.new(32).f_to_c == 0
class Converter

  attr_accessor :number

  def initialize(number)
    @number = number
  end

  def c_to_f
   # Multiply by 9, then divide by 5, then add 32
   # For instance, 12C == 53.6F
   ((number * 9)/5) + 32
  end

  def f_to_c
    # Deduct 32, then multiply by 5, then divide by 9
    # For instance, 23F == -5C
    ((number - 32) * 5)/9
  end

  def quarts_to_cups
    # Four cups in a quart
    # So, 2 quarts == 8 cups
    number * 4
  end

  def cups_to_quarts
    number / 4
  end

  def inches_to_feet
    number / 12
  end

  def feet_to_inches
    number * 12
  end

  def seconds_to_milliseconds
    # 1000 milliseconds per second
    number * 1000
  end

  def milliseconds_to_seconds
    number / 1000
  end

  def feet_to_miles
    # A mile is 5280 feet
    # So, 13200 feet == 2.5 miles
    number / 5280
  end

  def miles_to_feet
    number * 5280
  end

  def feet_to_meters
    # A meter is 3.28084 feet
    # So, A mile == 1609.344 meters (when rounded to three decimals)
    (number / 3.28084).round(3)
  end

  def meters_to_feet
    number * 3.28084
  end

  def ounce_to_gram
    # One ounce == 28.3495 grams
    number * 28.3495
  end

  def gram_to_ounce
    number / 28.3495
  end

end
It has no tests, and you strongly suspect there are bugs lurking in this program. So, let's write some tests.
- Each method (other than the attr_accessor methods and initialize) should have at least one associated test in converter_test.rb
- Those tests should pass. Of note: Some of these methods have bugs in them. If you run into one, fix it.

Adventure Mode
- Write a converter method for days into years. Write the test(s) for this method first. For our purposes, a year is 365.25 days (leap days)
- Write the opposite conversion, again while writing the tests first.
- Write two other conversions of your choice.

Epic Mode
- Use your now thoroughly tested class in a command line tool. Ask the user for a number and unit, then convert it to it's companion.
- If a unit has more than one companion, ask the user which unit they'd like to convert it into.
- Use the ruby-tty tools for the above
