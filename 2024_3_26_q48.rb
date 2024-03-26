require "json"

h = {"a"=>1, "b"=>2}
puts h.to_json
puts JSON.dump(h)
