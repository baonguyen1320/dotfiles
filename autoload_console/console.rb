# config/initializers/console.rb
module Rails::ConsoleMethods
  def user
    @_user ||= User.first
  end

  def duration
    current_time = Time.zone.now
    yield.tap do
      duration_time = Time.zone.now - current_time
      puts ""
      puts "===>>>> Duration: #{duration_time.round(2)} seconds <<<<==="
      puts ""
    end
  end
end
