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

  def extract_url(path, method: :get)
    route = Rails.application.routes.recognize_path(path, method: method)
    controller = "#{route[:controller].camelize}Controller".constantize
    action = route[:action]
    { controller: controller, action: action, params: route.except(:controller, :action) }
  end
end
