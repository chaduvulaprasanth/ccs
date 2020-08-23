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
    common_job(track, @start_time, @end_time)
  end

  def afternoon_sessions(track)
    @start_time = Time.local(year, month, day, 13)
    @end_time = Time.local(year, month, day, 17)
    common_job(track, @start_time, @end_time)
  end

  private

  def common_job(track, start_time, end_time)
    @available_minutes = (end_time.to_i - start_time.to_i) / 60
    @talk_start_time =  start_time
    @track = track
    add_to_track
  end

  def add_to_track
    talks.each do |talk, time|
      if time <= @available_minutes
        @track.add_sessions("#{@talk_start_time.strftime("%I:%M %p")} #{talk}") 
        @available_minutes -= time
        @talk_start_time += (time * 60) 
        @talks.delete(talk)
      end
    end
  end
end
