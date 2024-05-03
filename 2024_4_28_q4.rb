p ("aaaaa".."zzzzz").lazy.select { |e| e.end_with?"f"}.take(3).force
