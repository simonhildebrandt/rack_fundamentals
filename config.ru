require 'rack'

run do |env|
  [200, {}, ["Hello World"]]
end

# run Proc.new { |env| [200, {'content-type' => 'text/html'}, ['get rack\'d']] }

# run lambda { |env| [200, {'content-type' => 'text/html'}, ['Simply Rack']] }

# module Thing
#   def self.call(env)
#     [200, {'content-type' => 'text/html'}, ['Modular Rack']]
#   end
# end

# run Thing

# class Greeter
#   def initialize(options={})
#     @options = options
#   end

#   def call(env)
#     [200, {'content-type' => 'text/html'}, [greeting] ]
#   end

#   def greeting
#     @options.fetch(:greeting, 'Hello World')
#   end
# end

# run Greeter.new
# run Greeter.new(greeting: 'Wassup')

# use Rack::Static, urls: ['/media'], root: 'public', index: 'index.html'
# run lambda { |env| [200, {'content-type' => 'text/html'}, ['Static']] }

# Rack::Cascade
