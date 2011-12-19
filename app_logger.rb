class AppLogger
  def initialize(app, logger)
    @app, @logger = app, logger
  end

  def call(env)
    env['app_logger'] = logger
    @app.call(env)
  end
end
