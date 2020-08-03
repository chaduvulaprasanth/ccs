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
end
