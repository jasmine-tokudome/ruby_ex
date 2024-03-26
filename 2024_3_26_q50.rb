t1 = Thread.start do
  raise ThreadError
end
sleep
