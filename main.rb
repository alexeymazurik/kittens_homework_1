class Router

  def initialize(routes)
    @routes = routes
    @routes.default = Controller
  end

  def call(env)
    @routes[env['PATH_INFO']].new.call
  end
end

class Controller

  def initialize
    @response_text = 'Oops. Not found :('
  end

  def call
    action
  end

  private

  def action
    preprocess(404)
  end

  def preprocess(status)
    [status, {}, [@response_text]]
  end
end