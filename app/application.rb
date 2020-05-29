class Application
    def call(env)
        resp = Rack::Response.new

        message = Time.now.hour < 12? 'Good Morning!' : 'Good Afternoon!'
        resp.write message
        resp.finish
    end
end