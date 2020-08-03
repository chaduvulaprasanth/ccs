require_relative "talks" 

class Conference

  def self.schedule
    new.schedule
  end

  def schedule
    talks = Talks.talks_list
  end
end
