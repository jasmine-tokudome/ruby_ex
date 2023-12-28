def foo
  throw :exit
  catch(:exit) do
    foo
    p 1
  end
end
p 2
