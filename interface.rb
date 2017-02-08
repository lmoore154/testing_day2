require 'tty'
require_relative 'converter'

class Calculator

  attr_accessor :number, :units, :prompt

  def initialize
    @prompt = TTY::Prompt.new
    thing_to_be_converted
  end

  def thing_to_be_converted
    self.number = prompt.ask("How many things do you have?").to_f
    self.units = prompt.ask("What kind of thing are they?").downcase
  end

  def conversion
    case units
    when "celsius" then Converter.new(number).c_to_f
    when "fahrenheit" then Converter.new(number).f_to_c
    when 'quarts' then Converter.new(number).quarts_to_cups
    when 'cups' then Converter.new(number).cups_to_quarts
    when 'inches' then Converter.new(number).inches_to_feet
    when 'feet'
      feet_response = prompt.select("What do you want to convert to?", %w(Inches Meters Miles))
      if feet_response == "Inches"
        Converter.new(number).feet_to_inches
      elsif feet_response == "Meters"
        Converter.new(number).feet_to_meters
      elsif feet_response == "Miles"
        Converter.new(number).feet_to_miles
      end
    when 'seconds' then Converter.new(number).seconds_to_milliseconds
    when 'milliseconds' then Converter.new(number).milliseconds_to_seconds
    when 'miles' then Converter.new(number).miles_to_feet
    when 'meters' then Converter.new(number).meters_to_feet
    when 'ounce' then Converter.new(number).ounce_to_gram
    when 'gram' then Converter.new(number).gram_to_ounce
    when 'years' then Converter.new(number).years_to_days
    when 'days' then Converter.new(number).days_to_years
    when 'liters' then Converter.new(number).liters_to_deciliters
    when 'deciliters' then Converter.new(number).deciliters_to_liters
    end
  end

end     # End of Calculator class


calc = Calculator.new

puts "#{calc.number} #{calc.units} converts to #{calc.conversion}"
