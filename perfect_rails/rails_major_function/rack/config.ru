require "rack"
require_relative "app"
require_relative "simple_middle"

use Rack::Runtime
use SimpleMiddle

run App.new