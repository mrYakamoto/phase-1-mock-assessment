require_relative 'teacher'

class ApprenticeTeacher < Teacher

  def initialize(options={})
    super(options={})
    @target_raise = 800
    @target_performance_rating = 80
  end

  def teach_stuff
    response = ""
    response += "Listen, class, this is how everything works. "
    response += "*drops crazy knowledge bomb* "
    response += "... You're welcome."
  end

  def attend_training_session
    puts "Whoa. I know ruby-fu"
  end
end
