def get_counter start
  Proc.new{|up|start += up}
end

count_up = get_counter(1)

pp count_up.call(1)

pp count_up.call(3)
