# frozen_string_literal: true

# converts seconds to 00:00:00 format
class Timer
  attr_accessor :seconds
  def initialize(seconds = 0)
    @seconds = seconds
  end
  $secondsInMinute = 60
  $minutesInHour = 60
  def time_string
    $minutes = 0
    $hours = 0
    $formatted_time = ''
    if @seconds > $secondsInMinute
      $minutes = @seconds / $secondsInMinute
      @seconds -= ($secondsInMinute * $minutes)
    end
    if $minutes > $minutesInHour
      $hours = $minutes / $minutesInHour
      $minutes -= ($minutesInHour * $hours)
    end
    $formatted_time += if $hours > 9
                         "#{$hours}:"
                       else
                         "0#{$hours}:"
                       end
    $formatted_time += if $minutes > 9
                         "#{$minutes}:"
                       else
                         "0#{$minutes}:"
                       end
    $formatted_time += if @seconds > 9
                         @seconds.to_s
                       else
                         "0#{@seconds}"
                       end
    $formatted_time
  end

  @timer = Timer.new
  puts @timer.time_string
end
