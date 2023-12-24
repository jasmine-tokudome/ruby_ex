def func x, &proc
  x+proc.call
end

func(1) do
  2
end

pp func(1)
