require 'rack'

#run Proc.new { |env| ['200', {'Content-Type' => 'text/html'}, ['get rack\'d']] }

#run lambda { |env| ['200', {'Content-Type' => 'text/html'}, ['Simply Rack']] }


# class Greeter
#   def initialize(options={})
#     @options = options
#   end
#
#   def call(env)
#     ['200', {'Content-Type' => 'text/html'}, [greeting] ]
#   end
#
#   def greeting
#     @options.fetch(:greeting, 'Hello World')
#   end
# end
#
# run Greeter.new
#run Greeter.new(greeting: 'Wassup')

use Rack::Static, urls: ['/media'], root: 'public', index: 'index.html'
