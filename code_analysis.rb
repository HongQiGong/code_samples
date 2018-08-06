#!/usr/bin/env ruby

require File.expand_path('../../../config/environment', __FILE__)

def foobar(date_array)
  map = Hash.new

  date_array.each do |date_1| # loop through the array
    year = date_1.year

    date_array.each do |date_2|
      if year == date_2.year
        if map[year].nil? # is the value null/nil
          map[year] = Array.new
        end

        map[year].push(date_2) # append to the array
      end
    end
  end

  result = Array.new
  map.values.each do |arr|
    sorted_arr = arr.sort
    result.push(sorted_arr[0])
  end

  return result.sort
end
