class SimpleMiddle
  def initialize(app)
    puts "*" * 50
    puts "#{self.class} "
    @app = app
  end

  def call(env)
    status, headers, body = @app.call(env)
    puts "*" * 50
    puts "#{self.class}"
    return [status, headers, body]
  end
end