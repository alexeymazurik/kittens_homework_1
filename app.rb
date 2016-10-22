require './main.rb'

class HiController < Controller
  def action
    time = Time.now
    @response_text = "<h1>Hi, you're in the <i>'/hi'</i>. It's #{time}</h1>"
    preprocess(200)
  end
end

class HelloController < Controller
  def action
    time = Time.now
    @response_text = "<h1>Hello, you're in the <i>'/hello'</i>. It's #{time}</h1>"
    preprocess(200)
  end
end

Application = Router.new({
    '/hi' => HiController,
    '/hello' => HelloController
})