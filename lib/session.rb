require_relative "track" 

class Session
  attr_reader :talks, :year, :month, :day

  def initialize(talks)
    @talks = talks
    @year, @month, @day = 2020, 8, 3
    @track = nil
    @available_minutes = nil
    @talk_start_time = nil
  end

  def morning_sessions(track)
    @start_time = Time.local(year, month, day, 9)
    @end_time = Time.local(year, month, day, 12)
  end
end
