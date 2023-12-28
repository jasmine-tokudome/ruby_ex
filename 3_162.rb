begin
  1/0
rescue ZeroDivisionError
  p $!.class
  raise
end