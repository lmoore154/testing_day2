require 'minitest/autorun'
require_relative 'converter'
require 'tty'

class ConverterTest < MiniTest::Test

  def test_celsius_to_fahrenheit
    assert Converter.new(12).c_to_f == 53.6
  end

  def test_fahrenheit_to_celsius
    assert Converter.new(23).f_to_c == -5
  end

  def test_there_are_four_cups_in_a_quart
    assert Converter.new(4).cups_to_quarts == 1
  end

  def test_a_quart_has_four_cups
    assert Converter.new(1).quarts_to_cups == 4
  end

  def test_there_are_12_inches_in_a_foot
    assert Converter.new(12).inches_to_feet == 1
  end

  def test_a_foot_has_12_inches
    assert Converter.new(1).feet_to_inches == 12
  end

  def test_there_are_1000_milliseconds_per_second
    assert Converter.new(1000).milliseconds_to_seconds == 1
  end

  def test_a_second_has_1000_milliseconds
    assert Converter.new(1).seconds_to_milliseconds == 1000
  end

  def test_there_are_5280_feet_in_a_mile
    assert Converter.new(13200).feet_to_miles == 2.5
  end

  def test_a_mile_has_5280_feet
    assert Converter.new(1).miles_to_feet == 5280
  end

  def test_there_are_about_3_feet_in_a_meter
    assert Converter.new(5280).feet_to_meters == 1609.344
  end

  def test_a_meter_has_about_3_feet
    assert Converter.new(1).meters_to_feet == 3.28084
  end

  def test_there_are_about_28_grams_in_an_ounce
    assert Converter.new(28.3495).gram_to_ounce == 1
  end

  def test_an_ounce_has_about_28_grams
    assert Converter.new(1).ounce_to_gram == 28.3495
  end

  def test_a_year_has_about_365_days
    assert Converter.new(1).years_to_days == 365.25
  end

  def test_there_are_about_365_days_in_a_year
    assert Converter.new(365.25).days_to_years == 1
  end

  def test_a_liter_has_10_deciliters
    assert Converter.new(1).liters_to_deciliters == 10
  end

  def test_there_are_10_deciliters_in_a_liter
    assert Converter.new(10).deciliters_to_liters == 1
  end

end


class InterfaceTest < MiniTest::Test

  def test_an_old_thing_will_become_a_new_thing
    
  end


end
