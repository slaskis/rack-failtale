require "rack/lobster"
require "lib/rack/failtale"

use Rack::Failtale, "f1b7be7c099195845410ceed61fc12932505b14f"
run proc { |env| raise "Works!" }