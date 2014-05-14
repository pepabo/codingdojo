https://gist.github.com/hsbt/8385215b09080fb318d0require 'logger'

class RakeExcecuter < Logger::Application
  def initialize(tasklist = [])
    super
    @tasklist = tasklist
  end

  private
  def run
    @tasklist.each do |task|
      log(Logger::DEBUG, "#{task} start")
      # Rake::Task[task].invoke
      p task
      log(Logger::DEBUG, "#{task} end")
    end
  end
end

RakeExcecuter.new(%w(db:migrate db:seed)).start
